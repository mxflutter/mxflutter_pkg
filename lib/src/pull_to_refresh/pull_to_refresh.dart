//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/mxflutter.dart';

import 'src/indicator/classic_indicator.dart';
import 'src/smart_refresher.dart';

Map<String, MXFunctionInvoke> registerPullToRefreshSeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerSmartRefresherSeries());
  m.addAll(registerClassicIndicatorSeries());
  return m;
}
