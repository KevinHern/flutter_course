import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_demo/components/screen_components.dart';
import 'package:flutter_course_demo/components/text_card.dart';
import 'package:http/http.dart' as http;
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../models/unit_three/number_trivia.dart';

class FormTile extends StatelessWidget {
  final Widget child;
  const FormTile({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0.0),
      title: this.child,
    );
  }
}

class UnitThreeExample extends StatelessWidget {
  static const double spacing = 8.0;
  const UnitThreeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: 'Unit III: Network and Futures',
      child: Column(
        children: [
          Text(
            'Number Trivia API',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          const NumberTriviaAPI(),
        ],
      ),
    );
  }
}

class NumberTriviaAPI extends StatefulWidget {
  const NumberTriviaAPI({Key? key}) : super(key: key);

  @override
  NumberTriviaAPIState createState() => NumberTriviaAPIState();
}

class NumberTriviaAPIState extends State<NumberTriviaAPI> {
  static const String mandatoryFieldMessage = 'Por favor, complete el campo';
  static const double spacing = 8.0;
  final TextEditingController numberTriviaController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  NumberTrivia? numberTrivia;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: this.formKey,
              child: Column(
                children: [
                  FormTile(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Number",
                        icon: Icon(Icons.numbers),
                        labelText: "Number",
                      ),
                      style: Theme.of(context).textTheme.bodyText1,
                      controller: this.numberTriviaController,
                      readOnly: false,
                      textCapitalization: TextCapitalization.none,
                      maxLines: 1,
                      textInputAction: TextInputAction.send,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      validator: (String? value) {
                        return (value == null)
                            ? null
                            : (value.trim().isEmpty)
                                ? mandatoryFieldMessage
                                : null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: spacing,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Get Number Trivia!",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    onPressed: () async {
                      if (this.formKey.currentState!.validate()) {
                        // Preparing a Progress Dialogg
                        final pd = ProgressDialog(context: context);

                        pd.show(
                          max: 2,
                          msg:
                              "Sending GET petition to 'http://numbersapi.com'",
                        );

                        // Executing a GET request
                        final response = await http.get(
                          Uri.parse(
                              'http://numbersapi.com/${numberTriviaController.text}/trivia?json'),
                          headers: <String, String>{
                            'Content-Type': 'application/json',
                          },
                        );

                        if (response.statusCode == 200) {
                          numberTrivia =
                              NumberTrivia.fromJson(jsonDecode(response.body));
                        } else {
                          numberTrivia = null;
                        }

                        // Closing Progress Dialog
                        if (pd.isOpen()) {
                          pd.close();
                        }

                        // Updating UI
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: spacing * 5,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(spacing * 3),
            child: numberTrivia == null
                ? const FlutterLogo(
                    size: 150,
                  )
                : TextCard(
                    text: "Number: ${numberTrivia!.number}\n\n",
                    textSpanList: [
                      TextSpan(
                        text: "Trivia: ",
                        style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.bodyText1!.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.bodyText1!.fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: numberTrivia!.trivia,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
