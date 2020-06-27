import 'package:favorcate/ui/shared/size_fit.dart';
extension DoubleFit on double {  // 2.6之后才开始支持
//  double px() => HYSizeFit.setPx(this);
//  double rpx() => HYSizeFit.setRpx(this);
  double get px => HYSizeFit.setPx(this);
  double get rpx => HYSizeFit.setRpx(this);
}