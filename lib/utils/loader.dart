
import 'package:odii_translation_test/constant/colors.dart';
import 'package:odii_translation_test/utils/progressFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoaderProvider extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  ProgressBar _progressBar = ProgressBar();

  show(BuildContext context) {
    _progressBar.show(context);
  }

  hide() {
    _progressBar.hide();
  }
}


// final loaderOne = Padding(
//   padding: const EdgeInsets.all(18.0),
//   child: SpinKitFadingCircle(
//     color: AppColors.primarySecondaryColor,
//     size: 50.0,
//   ),
// );
//
// final loaderTwo = Padding(
//   padding: const EdgeInsets.all(18.0),
//   child: SpinKitFadingCircle(
//     color: Colors.white,
//     size: 30.0,
//   ),
// );

final loaderOne = Padding(
  padding: const EdgeInsets.all(18.0),
  child: Center(
    child: CupertinoActivityIndicator(
      radius: 13,
    ),
  ),
);

final loaderTwo = Padding(
  padding: const EdgeInsets.all(18.0),
  child: Center(
    child: CupertinoActivityIndicator(
      radius: 13,
    ),
  ),
);
