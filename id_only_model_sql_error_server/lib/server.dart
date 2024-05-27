import 'package:serverpod/serverpod.dart';

import 'package:id_only_model_sql_error_server/src/web/routes/root.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
  );

  // If you are using any future calls, they need to be registered here.
  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  // Setup a default page at the web root.
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  // Start the server.
  await pod.start();

  // Run bug reproduction
  await _bugRepro(pod);
}

Future<void> _bugRepro(Serverpod pod) async {
  final session = await pod.createSession();

  // Create an item if one does not exist
  final items = await Item.db.find(session);
  if (items.isEmpty) {
    items.add(await Item.db.insertRow(session, Item(name: 'Test')));
  }
  final item = items.first;

  // The following line causes the error
  final shippingCrateList = await ItemList.db.insertRow(session, ItemList());
  final shippingCrateEntries = await ItemListEntry.db.insert(session, [
    ItemListEntry(
      itemListId: shippingCrateList.id!,
      itemId: item.id!,
      amount: 5,
    ),
  ]);
  final shippingCrate = ShippingCrate.db.insertRow(
      session,
      ShippingCrate(
        itemListId: shippingCrateList.id!,
        weight: 10,
        source: 'Earth',
        destination: 'Moon',
      ));

  await session.close();
}
