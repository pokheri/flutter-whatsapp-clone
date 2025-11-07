import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/text_field_decoration.dart';

class SearchMenuePage extends StatelessWidget {
  const SearchMenuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325,

      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          bottom: BorderSide(width: 1.5, color: Colors.grey),
        ),
      ),

      padding: const EdgeInsets.only(left: 15, right: 15),
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0450),
      child: Column(
        children: [
          TextField(
            decoration: textFieldDecoration().copyWith(
              prefixIcon: GestureDetector(
                onTap: () {
                  print('Yeah u got it man ');
                },
                child: Icon(Icons.arrow_back),
              ),
            ),
            onSubmitted: (value) {
              print(value);
            },
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text("I want help with work assignment "),
                      icon: Icon(Icons.work_outline),
                    ),
                  );
                }),
              ],
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text("I want help with work assignment "),
                      icon: Icon(Icons.work_outline),
                    ),
                  );
                }),
              ],
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text("I want help with work assignment "),
                      icon: Icon(Icons.work_outline),
                    ),
                  );
                }),
              ],
            ),
          ),
          SizedBox(height: 12),
          Divider(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(8, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text('This is '),
                      icon: Icon(Icons.smoke_free),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          213,
                          216,
                          218,
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
