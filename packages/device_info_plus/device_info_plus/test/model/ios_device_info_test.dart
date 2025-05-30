import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$IosDeviceInfo fromMap | toMap', () {
    late final IosDeviceInfo iosDeviceInfo;
    late final Map<String, dynamic> iosDeviceInfoMap;

    setUpAll(() {
      const iosUtsnameMap = <String, dynamic>{
        'release': 'release',
        'version': 'version',
        'machine': 'machine',
        'sysname': 'sysname',
        'nodename': 'nodename',
      };
      iosDeviceInfoMap = <String, dynamic>{
        'name': 'name',
        'model': 'model',
        'modelName': 'modelName',
        'utsname': iosUtsnameMap,
        'systemName': 'systemName',
        'isPhysicalDevice': true,
        'isiOSAppOnMac': true,
        'physicalRamSize': 8192,
        'availableRamSize': 4096,
        'systemVersion': 'systemVersion',
        'localizedModel': 'localizedModel',
        'identifierForVendor': 'identifierForVendor',
        'freeDiskSize': 4096,
        'totalDiskSize': 8192,
      };

      iosDeviceInfo = IosDeviceInfo.fromMap(iosDeviceInfoMap);
    });

    test('fromMap should return $IosDeviceInfo with correct values', () {
      expect(iosDeviceInfo.name, 'name');
      expect(iosDeviceInfo.model, 'model');
      expect(iosDeviceInfo.modelName, 'modelName');
      expect(iosDeviceInfo.isPhysicalDevice, isTrue);
      expect(iosDeviceInfo.isiOSAppOnMac, isTrue);
      expect(iosDeviceInfo.physicalRamSize, 8192);
      expect(iosDeviceInfo.availableRamSize, 4096);
      expect(iosDeviceInfo.systemName, 'systemName');
      expect(iosDeviceInfo.systemVersion, 'systemVersion');
      expect(iosDeviceInfo.localizedModel, 'localizedModel');
      expect(iosDeviceInfo.freeDiskSize, 4096);
      expect(iosDeviceInfo.totalDiskSize, 8192);
      expect(iosDeviceInfo.utsname.release, 'release');
      expect(iosDeviceInfo.utsname.version, 'version');
      expect(iosDeviceInfo.utsname.machine, 'machine');
      expect(iosDeviceInfo.utsname.sysname, 'sysname');
      expect(iosDeviceInfo.utsname.nodename, 'nodename');
    });

    test('toMap should return map with correct key and map', () {
      expect(iosDeviceInfo.data, equals(iosDeviceInfoMap));
    });
  });
}
