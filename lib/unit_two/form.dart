// Basic Imports

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_demo/components/screen_components.dart';

import '../components/text_card.dart';

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

class FormScreen extends StatelessWidget {
  static const double spacing = 8.0;
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit II: Forms",
      child: Column(
        children: [
          Text(
            'Flutter Forms',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "Forms ",
            textSpanList: [
              TextSpan(
                text:
                    "are the basic means to obtain inputs from the user. They are the key components of gathering and manipulating the information the user "
                    "provides. Flutter forms are very powerful because they allow to setup easy design, manage validators, setup input types and other "
                    "subtle constraints.\n\n"
                    "As you already know, there is a ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Form Widget",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ". However, keep in mind that this widget does not automatically create a Form with fields that the user can interact, but rather, ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "it encloses a group of Widgets and will treat them as a Form\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "This Widget also provides a special field called 'key'. This field gives you the possibility to pass a special variable of the following type: ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "GlobalState<FormState>.\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          Text(
            'TextFormFields as Form Fields',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "TextFormField",
            textSpanList: [
              TextSpan(
                text:
                    " is the widget that allows you to create Input Fields in your form. Each TextFormField can be customized to your heart's content; you can "
                    "define which type of inputs you would like to receive.\n"
                    "Now, the special trait of TextFormFields is that they offer validators and other subtle constraints.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Validators",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " are special functions that check the user's input value and compares it to something you need (for example, compare the input's format, "
                    "check for special characters, check for valid emails, etc.). Here you will mostly use ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "regular expressions",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " to try and generalize a format that you need. You can also return error messages in case the input does not match the format you have specified.\n"
                    "Keep in mind, validators check the input the moment you consult the Form's state using a Form Key.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Constraints",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " are subtle rules you can set and may vary depending of the type of input you expect to receive. These constraints are active while the user "
                    "is editing the field. These constraints can be: limit number of lines, accept only numbers, move to the next field or end the form, "
                    "automatically capitalize words or sentences, allows read-only, etc.\n"
                    "These rules can help you reduce time in validating certain inputs or have more control what happens when a certain action is performed on the field.\n\n"
                    "And lastly, there is a very important field in each TextFormField, which is the ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Controller Field",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ". Here you provide a variable of type ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "TextEditingController",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " which serves as an intermediate of the TextFormField Widget and the logic of your application. With this variable, you have "
                    "access to the information that the TextFormField contains after the user has completed it. Using the TextFormField alone isn't "
                    "enough to get values from the user; everything is happening over the UI!\n"
                    "It is mandatory the use of the controller if you want to use the user input values for some specific purposes.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "The GlobalState<FormState> Key ",
            textSpanList: [
              TextSpan(
                text:
                    "is a variable that can check and validate the current State of the Form. As you can see, it is really important because it handles "
                    "the verification for you!\n"
                    "With no doubts, this Key variable will save you time in validating the user input and will force an UI update for the form to display "
                    "error messages.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const ScreenDivider(),
          Text(
            'Form Demo',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing * 2,
          ),
          const DummyForm(),
          const SizedBox(
            height: spacing * 2,
          ),
          const DetailsTextCard(
            implementationMessage: "the implementation of the form",
            fileName: "form.dart",
          ),
        ],
      ),
    );
  }
}

class DummyForm extends StatefulWidget {
  const DummyForm({Key? key}) : super(key: key);

  @override
  DummyFormState createState() => DummyFormState();
}

class DummyFormState extends State<DummyForm> {
  // Setting some constants that will be used throughout the whole form.
  static const double spacing = 8.0;
  static const String mandatoryFieldMessage = 'Por favor, complete el campo';
  final _formKey = GlobalKey<FormState>();

  // Defining a controller for each input field in the form, as you see, descriptive names are useful
  final TextEditingController singleLineController = TextEditingController(),
      emailController = TextEditingController(),
      multiLineController = TextEditingController(),
      numberController = TextEditingController(),
      datetimeController = TextEditingController();

  // Defining variables that may change when the user performs a certain action
  var switchValue = false, showLogo = false;

  /// Useful Extra Widgets:
  /// - FocusTraversalGroup(): Do you know that in web, when you press Tab the browser moves you to the next element accordingly to the tab index?
  ///   Well, its the same concept but with Flutter! With this Widget, you can manage how the user traverses Widgets (in this case, TextFormFields)
  ///   when they use the browser and press the tab button. The most common Traverse Policy is te OrderedTraversalPolicy (moves the user from the
  ///   top Widget to the bottom one)
  @override
  Widget build(BuildContext context) {
    return Card(
      child: FocusTraversalGroup(
        policy: OrderedTraversalPolicy(),
        child: Padding(
          padding: const EdgeInsets.all(spacing * 2),
          child: Form(
            key: this._formKey,
            child: Column(
              children: [
                FormTile(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Single Line Input",
                      icon: Icon(Icons.text_fields),
                      labelText: "Single Line Input",
                    ),
                    style: Theme.of(context).textTheme.bodyText1,
                    controller: this.singleLineController,
                    readOnly: false,
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: 1,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.none,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
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
                FormTile(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email Input",
                      icon: Icon(Icons.email),
                      labelText: "Email Input",
                    ),
                    style: Theme.of(context).textTheme.bodyText1,
                    controller: this.emailController,
                    readOnly: false,
                    textCapitalization: TextCapitalization.none,
                    maxLines: 1,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    validator: (String? value) {
                      return (value == null)
                          ? null
                          : (value.trim().isEmpty)
                              ? 'Por favor, ingrese un correo'
                              : (!RegExp("[a-z]+@[a-zA-Z]+\.[a-zA-Z]+")
                                      .hasMatch(value))
                                  ? "Ingresa un correo válido"
                                  : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: spacing,
                ),
                FormTile(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Multi Line Input",
                      icon: Icon(Icons.list_alt),
                      labelText: "Multi Line Input",
                    ),
                    style: Theme.of(context).textTheme.bodyText1,
                    controller: this.multiLineController,
                    readOnly: false,
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: null,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.multiline,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
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
                FormTile(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Number Input",
                      icon: Icon(Icons.numbers),
                      labelText: "Number Input",
                    ),
                    style: Theme.of(context).textTheme.bodyText1,
                    controller: this.numberController,
                    readOnly: false,
                    textCapitalization: TextCapitalization.none,
                    maxLines: 1,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      // FilteringTextInputFormatter.allow(RegExp(r'[0-9]+')),
                      LengthLimitingTextInputFormatter(8),
                    ],
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
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
                Card(
                  child: ListTile(
                    title: Text(
                      "Switch Input",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    trailing: Switch(
                      value: switchValue,
                      onChanged: (value) => setState(() => switchValue = value),
                    ),
                  ),
                ),
                const SizedBox(
                  height: spacing,
                ),
                DateTimePicker(
                  controller: datetimeController,
                  decoration: const InputDecoration(
                    hintText: "DateTime Picker",
                    icon: Icon(Icons.calendar_today),
                    labelText: "DateTime Picker",
                  ),
                  type: DateTimePickerType.dateTime,
                  firstDate: DateTime(DateTime.now().day + 1),
                  lastDate: DateTime(DateTime.now().year + 1),
                  initialDate: (DateTime.now()),
                  validator: (String? value) {
                    return (value == null)
                        ? null
                        : (value.trim().isEmpty)
                            ? 'Por favor, seleccione una fecha y hora'
                            : null;
                  },
                ),
                const SizedBox(
                  height: spacing * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Reset',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      onPressed: () => setState(() {
                        /*
                          As established before, the controllers are the intermediates between your app
                          and the app's logic. The purpose of this button is to reset all the controllers and variables
                          to their default values.
                        */
                        singleLineController.text = "";
                        emailController.text = "";
                        multiLineController.text = "";
                        numberController.text = "";
                        datetimeController.text = "";
                        switchValue = false;
                        showLogo = false;
                      }),
                    ),
                    ElevatedButton(
                      child: Text(
                        'Save',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      onPressed: () => setState(() {
                        /*
                            This is where the Form Key is really used. When the user presses the button to continue the form's flowchart,
                            you will use the Form Key to validate all the input values in the current state. That means, for each TextFormField
                            (and other special widgets) you used inside the Form Widget, they will perform the validation process using the
                            validate function you declared before.

                            In order to get a 'true' from the .validate() call, all the validators must return no error. If it isn't the case,
                            then all the Widgets that performed a validation will show an error message which you can customize.

                            Its worth mentioning that its up to you how you want to handle when the validation returns true or false.
                            For this example, if the form is valid, a Flutter Logo will be shown to the user.
                        */
                        showLogo = this._formKey.currentState!.validate();
                      }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: spacing * 2,
                ),
                Visibility(
                  visible: showLogo,
                  child: Column(
                    children: [
                      const FlutterLogo(
                        size: 250,
                      ),
                      const SizedBox(
                        height: spacing,
                      ),
                      Text(
                        'Form works!',
                        style: TextStyle(
                            fontFamily: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .fontFamily,
                            fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .fontSize! *
                                0.8,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
