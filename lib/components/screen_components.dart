import 'package:flutter/material.dart';

class ScreenScaffold extends StatelessWidget {
  final String screenTitle;
  final bool canPop;
  final double spacing, width;
  final Widget child;
  const ScreenScaffold(
      {required this.screenTitle,
      required this.child,
      this.canPop = true,
      this.spacing = 8.0,
      this.width = 600,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.screenTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: this.canPop
            ? IconButton(
                onPressed: () => Navigator.of(context).canPop()
                    ? Navigator.of(context).pop()
                    : {},
                icon: const Icon(Icons.arrow_back_rounded),
              )
            : null,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(this.spacing * 2),
            child: Center(
              child: SizedBox(
                width: this.width,
                child: this.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ScreenDivider extends StatelessWidget {
  static const double spacing = 8.0;
  const ScreenDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: spacing * 2),
      child: Divider(
        color: Colors.blueGrey,
        thickness: 2,
      ),
    );
  }
}
