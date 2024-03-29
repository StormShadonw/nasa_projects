import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(
    varName: 'NASA_API_KEY',
    obfuscate: true,
  )
  static String NASA_API_KEY = _Env.NASA_API_KEY;
}
