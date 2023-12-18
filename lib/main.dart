import 'package:flutter/material.dart';
import 'package:restfull_api/utils/services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ApiServices apiServices = ApiServices();

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
              future: apiServices.getComments(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Text(snapshot.data![index].id.toString());
                      });
                } else if (snapshot.hasData) {
                  return Text('${snapshot.hasData}');
                }
                return const CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}
