import 'package:flutter/material.dart';
import './widgets/customListTile.dart';
import './appTheme.dart';
import './dummy/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Later App',
      themeMode: ThemeMode.system,
      theme: LightThemes.lightTheme,
      darkTheme: DarkThemes.darkTheme,
      home: const MyHomePage(title: 'Later App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showModalBottomSheet(int index) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Title:",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ],
                    ),
                    Text(
                      dummyData[index]['title'],
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "URL:",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ],
                    ),
                    Text(
                      dummyData[index]['url'],
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: dummyData.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(86, 130, 163, 235),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text("Good\nAfternoon",
                    style: Theme.of(context).textTheme.displayMedium),
              ),
            );
          }
          return CustomListTile(
            index: index - 1,
            title: dummyData[index - 1]['title'],
            url: dummyData[index - 1]['url'],
            ontap: _showModalBottomSheet,
          );
        },
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
