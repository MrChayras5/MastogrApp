import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Bienvenida
  {
    'lx7y2m14': {
      'es': 'MastogrApp',
      'en': '',
    },
    'lx7y2m144': {
      'es': 'MastogrApp',
      'en': '',
    },
    'xze5q799': {
      'es': 'Home',
      'en': '',
    },
  },
  // IniciarSesion
  {
    'ev3jlr59': {
      'es': 'Iniciar Sesión:',
      'en': '',
    },
    'ns6l3xey': {
      'es': 'Hello World\n',
      'en': '',
    },
    'jbtssaye': {
      'es': 'Email',
      'en': '',
    },
    'tg7plcxy': {
      'es': 'ejemplo@gmail.com',
      'en': '',
    },
    '065e6dhs': {
      'es': 'Contraseña',
      'en': '',
    },
    'm6rusuqf': {
      'es': 'ejemplo1234',
      'en': '',
    },
    'sk0kxe3r': {
      'es': 'INICIAR SESIÓN',
      'en': '',
    },
    'n5ghu8wp': {
      'es': 'Ingrese su correo',
      'en': '',
    },
    'nrad91n6': {
      'es': 'Correo incorrecto',
      'en': '',
    },
    '8o9r3whw': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'qf780ef2': {
      'es': 'Ingrese su contraseña',
      'en': '',
    },
    'go757j05': {
      'es': 'Contraseña min. de 8 digitos.',
      'en': '',
    },
   // go757j05
    'zpoi82pg': {
      'es': 'Contraseña incorrecta.',
      'en': '',
    },
    'ycvhg1ks': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'yr6w1e5o': {
      'es': '¿Olvido su contraseña?',
      'en': '',
    },
    '19zo83v3': {
      'es': 'Soy Nuevo Usuario:  ',
      'en': '',
    },
    '73alzzcb': {
      'es': ' Registrate',
      'en': '',
    },
    'wp7cihg6': {
      'es': 'Home',
      'en': '',
    },
  },
  // MenuAsistente
  {
    'at8ewqum': {
      'es': 'Solicitudes',
      'en': '',
    },
    'xke0ggr0': {
      'es': 'Solicitudes de citas',
      'en': '',
    },
    'pc8uyo7h': {
      'es': 'Editar citas',
      'en': '',
    },
    'ngefynt7': {
      'es': 'Re-Agendar citas',
      'en': '',
    },
    'hulhqtw9': {
      'es': 'Peticiones',
      'en': '',
    },
    'tc6bbidk': {
      'es': 'Visualizar peticiones',
      'en': '',
    },
    'sd3vokhu': {
      'es': 'Asistente Médico',
      'en': '',
    },
    'z4c2fihi': {
      'es': 'Solicitudes',
      'en': '',
    },
    'b1rtg22x': {
      'es': 'Peticiones',
      'en': '',
    },
    'ocvnnjcq': {
      'es': 'Editar citas',
      'en': '',
    },
    '8ka4hmot': {
      'es': 'Home',
      'en': '',
    },
  },
  // SesionRegistro
  {
    'zwll9vf6': {
      'es': 'INICIAR SESIÓN',
      'en': '',
    },
    'q649eifg': {
      'es': 'REGISTRATE    ',
      'en': '',
    },
    'zt4gzetm': {
      'es': 'Home',
      'en': '',
    },
  },
  // Registrate
  {
    '4z9pyvtv': {
      'es': 'Registrate:',
      'en': '',
    },
    'nomm': {
      'es': 'Nombre ivalido:',
      'en': '',
    },
    'sxsm03mo': {
      'es': 'Hello World',
      'en': '',
    },
    'r6psupdo': {
      'es': 'Nombre completo',
      'en': '',
    },
    '6v6jo30c': {
      'es': 'Ingresa tu nombre aquí',
      'en': '',
    },
    'hfjgobcp': {
      'es': 'Email',
      'en': '',
    },
    '9at6nq9b': {
      'es': 'Ingresa tu email aquí',
      'en': '',
    },
    'xcrx3ucc': {
      'es': 'Contraseña',
      'en': '',
    },
    '1fgkxpez': {
      'es': 'Ingresa tu contraseña aquí',
      'en': '',
    },
    'p8qyaq0c': {
      'es': 'Confirma tu contraseña',
      'en': '',
    },
    '9gb595gx': {
      'es': 'Ingresa nuevamente tu contraseña',
      'en': '',
    },
    'la8eaaa3': {
      'es': 'Registrate',
      'en': '',
    },
    'a49fgj42': {
      'es': 'Ingresa tu nombre',
      'en': '',
    },
    '5duwfzyg': {
      'es': 'Error',
      'en': '',
    },
    'i80i56n8': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mpj5ofaj': {
      'es': 'Ingresa un correo',
      'en': '',
    },
    'ingname': {
      'es': 'Ingrese su nombre',
      'en': '',
    },
    'ingnamevalid': {
      'es': 'Ingrese un nombre valido',
      'en': '',
    },
    '7du2kdkh': {
      'es': 'Correo invalido',
      'en': '',
    },
    'correoregis': {
      'es': 'El correo ya fue registrado, intenta con otro',
      'en': '',
    },
    'pg9ph2pa': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mkf22nrd': {
      'es': 'Ingresar Contraseña',
      'en': '',
    },
    'confirmkf22nrd': {
      'es': 'Ingresar la confirmación de la contraseña',
      'en': '',
    },
    'passwordMismatch': {
      'es': 'Las contraseñas no coinciden',
      'en': '',
    },
    'correoYaRegistrado': {
      'es': 'Correo ya registrado',
      'en': '',
    },

    'leoqa9zd': {
      'es': 'Minimo de 8 caracteres',
      'en': '',
    },
    'yqt6qk9z': {
      'es': 'El maximo es de 20 caracteres',
      'en': '',
    },
    'oy06cu38': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '1ec4ssov': {
      'es': 'Field is required',
      'en': '',
    },
    'p2mqjsqo': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '8pncratv': {
      'es': 'Ya tengo una cuenta: ',
      'en': '',
    },
    '3akwnyhh': {
      'es': 'Iniciar Sesión',
      'en': '',
    },
    'cct1zkew': {
      'es': 'Home',
      'en': '',
    },
  },
  // SolicitudCitas
  {
    '1ztsuu6s': {
      'es': 'Solicitudes de citass',
      'en': '',
    },
    'g7bv24da': {
      'es': 'Detalles',
      'en': '',
    },
    'v6phb82g': {
      'es': 'Home',
      'en': '',
    },
  },
  // MenuPaciente
  {
    'v5elkwgq': {
      'es': 'Mis citas',
      'en': '',
    },
    'rbqkj6hkkkkk': {
      'es': 'Petición:',
      'en': '',
    },
    'rrr': {
      'es': 'NumCita:',
      'en': '',
    },
    'is5s3tgg': {
      'es': 'Calendario',
      'en': '',
    },
    '3p6w7c0a': {
      'es': 'Editar Citas',
      'en': '',
    },
    'wnm2qifx': {
      'es': 'Mis citas',
      'en': '',
    },
    '75ysv0as': {
      'es': 'Visualizar mis citas',
      'en': '',
    },
    'noupaocw': {
      'es': 'Editar Citas',
      'en': '',
    },
    'yhkukf1h': {
      'es': 'Visualizar citas',
      'en': '',
    },
    //Editar Citas
    'wl01xeul': {
      'es': 'Nombre: ',
      'en': '',
    },
    'o2sv6dph': {
      'es': 'Telefono: ',
      'en': '',
    },
    'qikf3bjm': {
      'es': 'Curp: ',
      'en': '',
    },
    '6vre3sgm': {
      'es': 'Estudio: ',
      'en': '',
    },
    'm2uzzkxl': {
      'es': 'Estado: ',
      'en': '',
    },
    'qks6cw6h': {
      'es': 'Lugar: ',
      'en': '',
    },
    'm5glgnp2': {
      'es': 'Fecha: ',
      'en': '',
    },
    'zwuo4nf2': {
      'es': 'Hora: ',
      'en': '',
    },
    'dhy0qnh3': {
      'es': 'Calendario',
      'en': '',
    },
    '203q5mt9': {
      'es': 'Visualizar mi calendario',
      'en': '',
    },
    'afn1j8at': {
      'es': 'Menú Pacientes',
      'en': '',
    },
    'wdamfyd5': {
      'es': 'Home',
      'en': '',
    },
  },
  // GenerarReportes
  {
    '152ej25r': {
      'es': 'Nombre de cita',
      'en': '',
    },
    'voxqob5g': {
      'es': 'Fecha Agendada',
      'en': '',
    },
    'uacij0l4': {
      'es': 'Nombre Paciente',
      'en': '',
    },
    '52y6xmou': {
      'es': 'Estudio Elegido',
      'en': '',
    },
    'wmc5oywd': {
      'es': 'Clínica/lugar',
      'en': '',
    },
    '76q7sb48': {
      'es': 'Generar Reporte',
      'en': '',
    },
    'ahjfsbhj': {
      'es': 'Cita No.1',
      'en': '',
    },
    '5zq38hb9': {
      'es': 'Editar Citas',
      'en': '',
    },
    'mex49rbm': {
      'es': 'Home',
      'en': '',
    },
  },
  // Password1
  {
    '9aha89sh': {
      'es': '¿Olvido su contraseña?',
      'en': '',
    },
    'wxoqhkgi': {
      'es': 'Hello World',
      'en': '',
    },
    'g9j1xnhz': {
      'es':
          'Ingresa tu correo electronico / para enviar el código de seguridad',
      'en': '',
    },
    'jzhsxtfi': {
      'es': 'Email',
      'en': '',
    },
    '62ird19z': {
      'es': 'Ingresa tu email aquí',
      'en': '',
    },
    'p7f03836': {
      'es': 'Enviar',
      'en': '',
    },
    'haydd50i': {
      'es': 'Cancelar',
      'en': '',
    },
    '35sr12tu': {
      'es': 'Ya tengo una cuenta: ',
      'en': '',
    },
    'm4bevof6': {
      'es': 'Iniciar Sesión',
      'en': '',
    },
    'abdt9d5d': {
      'es': 'Home',
      'en': '',
    },
  },
  // MisCitas
  {
    '8ggzrm9y': {
      'es': 'Mis Citas',
      'en': '',
    },
    'pxitbise': {
      'es':
          '------------------------------------------------------------------',
      'en': '',
    },
    'jwn7q2w0': {
      'es': 'Citas Autorizadas',
      'en': '',
    },
    '0xswplfx': {
      'es': 'Citas Editadas',
      'en': '',
    },
    'yunderbp': {
      'es': 'Home',
      'en': '',
    },
  },
  // Calendario
  {
    'v6mnkjmh': {
      'es': 'Mis Citas',
      'en': '',
    },
    '2o576p3m': {
      'es': 'Calendario',
      'en': '',
    },
    'gsiawnek': {
      'es': 'Dias de sus citas',
      'en': '',
    },
    'dccjz03s': {
      'es': 'Citas del dia seleccionado',
      'en': '',
    },
    'bn9wg8hs': {
      'es': '',
      'en': '',
    },
    'rh7aha6y': {
      'es': 'Home',
      'en': '',
    },
  },
  // EditarCitas
  {
    'cg0oi830': {
      'es': 'Editar citas',
      'en': '',
    },
    'jqwp9myf': {
      'es': 'Autorizar',
      'en': '',
    },
    'gqs9si9e': {
      'es': 'Editar',
      'en': '',
    },
    '8soidikr': {
      'es': 'Home',
      'en': '',
    },
  },
  // Detalles
  {
    'ew15b2en': {
      'es': 'Detalles',
      'en': '',
    },
    'ygt0vv1b': {
      'es': 'Nombre:',
      'en': '',
    },
    'c9vtdecc': {
      'es': 'Telefono:',
      'en': '',
    },
    'zzldjl71': {
      'es': 'Curp :',
      'en': '',
    },
    'q0sjzx7o': {
      'es': 'Estudio:',
      'en': '',
    },
    '3xb0as0s': {
      'es': 'Estado:',
      'en': '',
    },
    'lp41show': {
      'es': 'Lugar:',
      'en': '',
    },
    '5hvemep6': {
      'es': 'Fecha:',
      'en': '',
    },
    'rbqkj6hk': {
      'es': 'Hora:',
      'en': '',
    },
    'bn6syrrp': {
      'es': 'Home',
      'en': '',
    },
  },
  // EditarDatosCitas
  {
    't2ri0zpg': {
      'es': 'Editar citas',
      'en': '',
    },
    'ndllm6x2': {
      'es': 'Actualiza los siguiente datos:',
      'en': '',
    },
    'z20swx0s': {
      'es': 'Option 1',
      'en': '',
    },
    'sgwmdzzn': {
      'es': 'Lugar...',
      'en': '',
    },
    'ar5t6r9r': {
      'es': 'Search for an item...',
      'en': '',
    },
    'a5si7j8b': {
      'es': 'Fecha',
      'en': '',
    },
    '7fwahmjq': {
      'es': 'Hora',
      'en': '',
    },
    'fh6w4xlgssss': {
      'es': 'Motivo:',
      'en': '',
    },
    'bydb1cdd': {
      'es': 'Motivo....',
      'en': '',
    },
    'da37immm': {
      'es': 'Actualizar',
      'en': '',
    },
    'cpzuns6g': {
      'es': 'Home',
      'en': '',
    },
  },
  // Reportes
  {
    'r3m8flnr': {
      'es': 'Reportes',
      'en': '',
    },
    'ye0uu2it': {
      'es': 'Home',
      'en': '',
    },
    'ok4cjw9f':{
      'es':'Editar',
      'en': '',
    },
  },
  // MiNuevaCita
  {
    '9wz2sugx': {
      'es': 'Nueva cita',
      'en': '',
    },
    'v1qpqw7o': {
      'es': 'Ingrese los siguiente datos:',
      'en': '',
    },
    'g8qk878e': {
      'es': 'Nombre',
      'en': '',
    },
    'igvukw2b': {
      'es': '',
      'en': '',
    },
    'teih622o': {
      'es': 'Teléfono',
      'en': '',
    },
    'iz965mcf': {
      'es': 'CURP',
      'en': '',
    },
    'ymlfyxeo': {
      'es': 'Field is required',
      'en': '',
    },
    'xith8nvo': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'cksi1tjh': {
      'es': 'Ingrese su teléfono',
      'en': '',
    },
    '6eq8c87o': {
      'es': 'Teléfono no valido min. de 10 numeros.',
      'en': '',
    },
    '1fo0krgj': {
      'es': 'Teléfono no valido max. de 10 numeros.',
      'en': '',
    },
    't0nqz4v3': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'im4kdkqk': {
      'es': 'Ingrese su CURP',
      'en': '',
    },
    'n6uue8we': {
      'es': 'CURP minimo de 18 dígitos',
      'en': '',
    },
    'gug9h75n': {
      'es': 'CURP maximo de 18 dígitos',
      'en': '',
    },
    'xcq7hev8': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'deid47sd': {
      'es': 'Estudio...',
      'en': '',
    },
    's5scryv5': {
      'es': 'Search for an item...',
      'en': '',
    },
    '52k3ctrj': {
      'es': 'Option 1',
      'en': '',
    },
    'oh6g89yj': {
      'es': 'Estado...',
      'en': '',
    },
    'cbc1y8rr': {
      'es': 'Search for an item...',
      'en': '',
    },
    'kd4hfyz4': {
      'es': 'Option 1',
      'en': '',
    },
    'hcefh11a': {
      'es': 'Lugar...',
      'en': '',
    },
    '7i7cop6i': {
      'es': 'Search for an item...',
      'en': '',
    },
    '5nc8bgjv': {
      'es': 'Fecha',
      'en': '',
    },
    'q6mdw62b': {
      'es': 'Hora',
      'en': '',
    },
    'e6szfko4': {
      'es': 'Continuar',
      'en': '',
    },
    'jjmpwbes': {
      'es': 'Home',
      'en': '',
    },
  },
  //EditarDatCitas
  {
    'dcr9gl3y': {
      'es': 'Editar cita',
      'en': '',
    },
    'dfau6xyj': {
      'es': 'Estudio...',
      'en': '',
    },
    'w6i69sr4': {
      'es': 'Estado...',
      'en': '',
    },
    'ytb7mj0t': {
      'es': 'Lugar...',
      'en': '',
    },
    'rat5kes5': {
      'es': 'Fecha',
      'en': '',
    },
    '3hd17ml1': {
      'es': 'Hora',
      'en': '',
    },
    'xeq7lctr': {
      'es': 'Motivo de cambio',
      'en': '',
    },
    '6ny5mmfr': {
      'es': 'Motivo de cambio...',
      'en': '',
    },
    'juhwvh7g': {
      'es': 'Ingresa el motivo de cambio',
      'en': '',
    },
    'sgdj38r9': {
      'es': 'Actualiza los siguiente datos:',
      'en': '',
    },
    'rwod3s3s': {
      'es': 'Actualizar',
      'en': '',
    },
  },

  //GenerarReportesAsistent
  {
    't14ns8mj': {
      'es': 'Nombre: ',
      'en': '',
    },
    'r0q6fos7': {
      'es': 'Estudio anterior: ',
      'en': '',
    },
    '7kzxo6zc': {
      'es': 'Estudio nuevo:',
      'en': '',
    },
    'ikdwlill': {
      'es': 'Estado anterior ',
      'en': '',
    },
    '7kzxo6zcc': {
      'es': 'Estado nuevo:',
      'en': '',
    },
    'tm5x7iut': {
      'es': 'Lugar anterior:',
      'en': '',
    },
    'tm5x7iutt': {
      'es': 'Lugar nuevo:',
      'en': '',
    },
    '76awkg77': {
      'es': 'Fecha anterior:',
      'en': '',
    },
    '7kzxo6zcz': {
      'es': 'Fecha nueva:',
      'en': '',
    },
    'mg0up9qx': {
      'es': 'Hora anterior:',
      'en': '',
    },
    'mg0up9qxasasx': {
      'es': 'Hora nueva:',
      'en': '',
    },
    'zqvt7eik': {
      'es': 'Denegar',
      'en': '',
    },
    'mg0up9qxc': {
      'es': 'Hora nueva:',
      'en': '',
    },
    '5tvoxeqs': {
      'es': 'Autorizar:',
      'en': '',
    },
    '5tvoxeqsssss': {
      'es': 'Autorizar:',
      'en': '',
    },
    'ptdcitas': {
      'es': 'Peticion de citas:',
      'en': '',
    },
  },

  // Miscellaneous
  {
    'q8wlpeem': {
      'es': '',
      'en': '',
    },
    'gyyagvtg': {
      'es': '',
      'en': '',
    },
    'o2iurlut': {
      'es': '',
      'en': '',
    },
    'tb2qdf8r': {
      'es': '',
      'en': '',
    },
    'j2tx43dj': {
      'es': '',
      'en': '',
    },
    'urdslsi1': {
      'es': '',
      'en': '',
    },
    '5cyqg20q': {
      'es': '',
      'en': '',
    },
    'z44h1ca5': {
      'es': '',
      'en': '',
    },
    'huai9g5v': {
      'es': '',
      'en': '',
    },
    'gbdz70y3': {
      'es': '',
      'en': '',
    },
    'l9ht9d8t': {
      'es': '',
      'en': '',
    },
    'svf3ucey': {
      'es': '',
      'en': '',
    },
    'pxmugd02': {
      'es': '',
      'en': '',
    },
    'id7pfur0': {
      'es': '',
      'en': '',
    },
    'cjbtbau0': {
      'es': '',
      'en': '',
    },
    'xf3th3lu': {
      'es': '',
      'en': '',
    },
    '219oepzk': {
      'es': '',
      'en': '',
    },
    '2wxmfwyj': {
      'es': '',
      'en': '',
    },
    'fgow1a42': {
      'es': '',
      'en': '',
    },
    '9szoqfg5': {
      'es': '',
      'en': '',
    },
    't4imfov7': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
