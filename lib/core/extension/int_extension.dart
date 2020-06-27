import 'package:favorcate/ui/shared/size_fit.dart';
extension IntFit on int {
//  double px() => HYSizeFit.setPx(this);
//  double rpx() => HYSizeFit.setRpx(this);
  double get px => HYSizeFit.setPx(this.toDouble());
  double get rpx => HYSizeFit.setRpx(this.toDouble());
}