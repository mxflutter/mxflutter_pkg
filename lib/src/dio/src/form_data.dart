//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:dio/dio.dart';
import 'package:mxflutter/mxflutter.dart';

/// 把自己能处理的类注册到分发器中。
Map<String, MXFunctionInvoke> registerFormDataSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_formData.funName] = _formData;
  m[_formDataFromMap.funName] = _formDataFromMap;
  return m;
}

var _formData = MXFunctionInvoke(
  "FormData",
  () => FormData(),
  [],
);
var _formDataFromMap = MXFunctionInvoke(
  "FormData.fromMap",
  ({
    dynamic map,
  }) =>
      FormData.fromMap(
    toMapT<String, dynamic>(map),
  ),
  [
    "map",
  ],
);
