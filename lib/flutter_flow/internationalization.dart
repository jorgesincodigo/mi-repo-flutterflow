import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['es', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String esText = '',
    String enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // iniciosesion
  {
    'pur36k82': {
      'es': 'Email',
      'en': '',
    },
    '5e61xyzh': {
      'es': 'Contrasena',
      'en': '',
    },
    'tigt1gjr': {
      'es': 'iniciar sesion',
      'en': '',
    },
    'kjnylip4': {
      'es': 'Registrarme',
      'en': '',
    },
    '0nwwfzbb': {
      'es': 'Registrarme',
      'en': '',
    },
    'qlqz6s57': {
      'es': 'Home',
      'en': '',
    },
  },
  // Menu
  {
    'z3dpe0in': {
      'es': 'Buscar',
      'en': '',
    },
    '45jwg3tk': {
      'es': 'Ingrese valor',
      'en': '',
    },
    'p081wxr8': {
      'es': 'Menu',
      'en': '',
    },
    'jwhj63l5': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '91rnfbdx': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'zh2oflzu': {
      'es': 'Home',
      'en': '',
    },
  },
  // tiktok
  {
    'wc33gktw': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'yssbypy2': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'qiozzggk': {
      'es': 'Home',
      'en': '',
    },
  },
  // PaginaA
  {
    'muzcxj2j': {
      'es': 'Texto a enviar',
      'en': '',
    },
    'vffulruu': {
      'es': 'Enviar',
      'en': '',
    },
    '98t3wy3z': {
      'es': 'Home',
      'en': '',
    },
  },
  // PaginaB
  {
    'socjecgd': {
      'es': 'Home',
      'en': '',
    },
  },
  // teststories
  {
    'v80an0n3': {
      'es': 'Stories',
      'en': '',
    },
    'f17a9hf7': {
      'es': 'Home',
      'en': '',
    },
  },
  // Sample
  {
    '0n0hccb9': {
      'es': 'Cuiades',
      'en': '',
    },
    '7ih63ol1': {
      'es': 'Nueva Cuidad',
      'en': '',
    },
    '7zr0z58h': {
      'es': 'Ex: Barcelona',
      'en': '',
    },
    '2iluj85l': {
      'es': 'Crear Cuidad',
      'en': '',
    },
    'pkm39b0w': {
      'es': 'Locales',
      'en': '',
    },
    '9pvorg0r': {
      'es': 'Agregar cuidad',
      'en': '',
    },
    'tz826m1o': {
      'es': 'Ex: Ferreteria Rojas',
      'en': '',
    },
    'aqivhosv': {
      'es': 'Please select...',
      'en': '',
    },
    'weve3wzs': {
      'es': 'Agregar',
      'en': '',
    },
    '0a5z1ggo': {
      'es': 'Dropdown',
      'en': '',
    },
    'dp85wdo9': {
      'es': 'Home',
      'en': '',
    },
  },
  // sample02
  {
    '8uk2tpuo': {
      'es': 'Nueva Local',
      'en': '',
    },
    'q4bjjjw3': {
      'es': 'Ex: Ferreteria Rojas',
      'en': '',
    },
    'rta8mfnx': {
      'es': 'Agregar',
      'en': '',
    },
    'vtkgdeav': {
      'es': 'Home',
      'en': '',
    },
  },
  // DROPDOWN
  {
    'rlmc4id0': {
      'es': 'Dropdown',
      'en': '',
    },
    'erb7kb6t': {
      'es': 'Colom',
      'en': '',
    },
    'xqt6y8v7': {
      'es': 'Mexico',
      'en': '',
    },
    'zv0mjyip': {
      'es': 'Espana',
      'en': '',
    },
    'au892cz1': {
      'es': 'Colombia',
      'en': '',
    },
    'gmre827m': {
      'es': 'Elige un pais',
      'en': '',
    },
    'x2r0z9u5': {
      'es': 'Actualizar',
      'en': '',
    },
    'qzi0gocm': {
      'es': 'Home',
      'en': '',
    },
  },
  // EJEMPLODROPDOWN
  {
    'nbnl3w80': {
      'es': 'Cuiades',
      'en': '',
    },
    'qfa379zy': {
      'es': 'Nueva Cuidad',
      'en': '',
    },
    '9hkhbejh': {
      'es': 'Ex: Barcelona',
      'en': '',
    },
    'z3crlfpy': {
      'es': 'Crear Cuidad',
      'en': '',
    },
    'doyu59a2': {
      'es': 'Locales',
      'en': '',
    },
    '2h4m3fn8': {
      'es': 'Agregar cuidad',
      'en': '',
    },
    '7uzrnrr4': {
      'es': 'Ex: Ferreteria Rojas',
      'en': '',
    },
    'y186oli1': {
      'es': 'Please select...',
      'en': '',
    },
    '9y2yciq6': {
      'es': 'Agregar',
      'en': '',
    },
    'favf2ur4': {
      'es': 'Dropdown',
      'en': '',
    },
    '8lgese1q': {
      'es': 'Home',
      'en': '',
    },
  },
  // LocalState
  {
    'iet2n38t': {
      'es': 'Ingresa una nota o apunte',
      'en': '',
    },
    'mmm1701w': {
      'es': 'Home',
      'en': '',
    },
  },
  // LocalStateCopy
  {
    'dlk8qp7u': {
      'es': 'Home',
      'en': '',
    },
  },
  // Admin_panel
  {
    'gij4lia7': {
      'es': 'Admin Dashboard',
      'en': '',
    },
    'zjhkdkrh': {
      'es': 'Hey Jorge',
      'en': '',
    },
    '6yd0cu4d': {
      'es': 'Hey Jorge',
      'en': '',
    },
    'gsklarla': {
      'es': 'Share',
      'en': '',
    },
    '6v7r7al2': {
      'es': 'Share',
      'en': '',
    },
    'k25qi04n': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    'ex2bkqg6': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '3rotj4o5': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    '7fnbnqhw': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'klmx4jhn': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    'wnujlfhs': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'jbbguct3': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    'egtk60gv': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '3d46fnu4': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    'cli6cyho': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '6u13it7r': {
      'es': 'Title',
      'en': '',
    },
    'y29vxnft': {
      'es': 'A wonderfully delicious 2 patty melt that melts into your...',
      'en': '',
    },
    'xg4i8s1n': {
      'es': '\$11.00',
      'en': '',
    },
    'yo718g3q': {
      'es': 'Home',
      'en': '',
    },
  },
  // Categoriaproductos
  {
    '17prun7i': {
      'es': 'Categorias',
      'en': '',
    },
    '2wrv5xqa': {
      'es': 'Nueva categoria',
      'en': '',
    },
    'ibr2wsdb': {
      'es': 'Ex: Vegetales',
      'en': '',
    },
    '4sj014nj': {
      'es': 'Anadir categoria',
      'en': '',
    },
    'pphu7f0k': {
      'es': 'Productos',
      'en': '',
    },
    'qv44mxzb': {
      'es': 'Anadir producto',
      'en': '',
    },
    'wi9fhzha': {
      'es': 'Ex: Tomates',
      'en': '',
    },
    'g7y964r5': {
      'es': 'Please select...',
      'en': '',
    },
    '0hchtjg2': {
      'es': 'Agregar',
      'en': '',
    },
    'riwi8jkp': {
      'es': 'Categoria productos',
      'en': '',
    },
    'fg30mm1t': {
      'es': 'Home',
      'en': '',
    },
  },
  // testapi
  {
    'ktwlming': {
      'es': 'Paises',
      'en': '',
    },
    'ppqmdumx': {
      'es': 'Api',
      'en': '',
    },
  },
  // testapidetails
  {
    'ljee420d': {
      'es': 'Details',
      'en': '',
    },
    'w68r3d46': {
      'es': 'Capital',
      'en': '',
    },
    '6w77p4go': {
      'es': 'Momeda',
      'en': '',
    },
    '03wm8n02': {
      'es': 'Home',
      'en': '',
    },
  },
  // Productos
  {
    'foob0g3c': {
      'es': 'Productos',
      'en': '',
    },
    '0rx9tysa': {
      'es': 'Agregar',
      'en': '',
    },
    'bvysvmel': {
      'es': 'carrito',
      'en': '',
    },
  },
  // Carrito
  {
    '8mh3vksn': {
      'es': 'Carrito',
      'en': '',
    },
    'emjarwq7': {
      'es': 'Listado de productos',
      'en': '',
    },
    '280mhm5m': {
      'es': '\$',
      'en': '',
    },
    'ij3fvq3p': {
      'es': '.00',
      'en': '',
    },
    'jhrsc33y': {
      'es': 'Precio: ',
      'en': '',
    },
    '8rh3k1t2': {
      'es': 'carrito',
      'en': '',
    },
  },
  // Map1
  {
    'h9yrbzjh': {
      'es': 'Map',
      'en': '',
    },
    '9agurv1g': {
      'es': 'Home',
      'en': '',
    },
  },
  // Nimage
  {
    'yqkhx15g': {
      'es': 'Nombre',
      'en': '',
    },
    'i95fszgr': {
      'es': 'Nombre',
      'en': '',
    },
    'cxzz6rfg': {
      'es': 'crear',
      'en': '',
    },
    '5jsj5zdx': {
      'es': 'Home',
      'en': '',
    },
  },
  // Asistencia
  {
    'u3ahkjkb': {
      'es': 'Asistencia',
      'en': '',
    },
    'eof3nanp': {
      'es': 'Rol',
      'en': '',
    },
    'tsfenxe6': {
      'es': 'agregar',
      'en': '',
    },
    'ciao9xe9': {
      'es': 'Home',
      'en': '',
    },
  },
  // blurpage
  {
    'ydg32xtw': {
      'es': 'Home',
      'en': '',
    },
  },
  // formulario
  {
    'gretafui': {
      'es': 'Search events here...',
      'en': '',
    },
    '7u1l3usp': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'xi1xvail': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'yffbbn71': {
      'es': '1.7mi',
      'en': '',
    },
    'sgy6t1uk': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'frfjj1ci': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'rjm17fw0': {
      'es': '1.7mi',
      'en': '',
    },
    '813ice0f': {
      'es': 'Store/Location Name',
      'en': '',
    },
    '6snucqtv': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'kz0pa448': {
      'es': '1.7mi',
      'en': '',
    },
    'jf1vju3z': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'p6h2pba5': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'sadaax4z': {
      'es': '1.7mi',
      'en': '',
    },
    'ne5kmjj1': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'yfwrtdkb': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'b6woju7c': {
      'es': '1.7mi',
      'en': '',
    },
    'dgfyu8jw': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'vqzhx7k2': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'mcsywp6c': {
      'es': '1.7mi',
      'en': '',
    },
    'k6fblkvf': {
      'es': 'Map View',
      'en': '',
    },
    '25777c7s': {
      'es': 'Shop',
      'en': '',
    },
  },
  // misItems
  {
    'ofoid642': {
      'es': 'Items',
      'en': '',
    },
    'ivgpe9t6': {
      'es': 'Nuevo Item',
      'en': '',
    },
    'dgsz48yd': {
      'es': 'Ingresa Nombre',
      'en': '',
    },
    'trq8moej': {
      'es': 'Nombre',
      'en': '',
    },
    '66wd1lbi': {
      'es': 'Ingresa Precio',
      'en': '',
    },
    '8xhaz03a': {
      'es': 'Precio',
      'en': '',
    },
    '2fn0wkkf': {
      'es': 'Guardar',
      'en': '',
    },
    'faavmsgj': {
      'es': 'Home',
      'en': '',
    },
  },
  // listaproductos
  {
    'u50c2xfe': {
      'es': 'Lista de Productos',
      'en': '',
    },
    'fqx062wt': {
      'es': 'Home',
      'en': '',
    },
  },
  // detallesProducto
  {
    'sydzfnek': {
      'es': 'Precio:',
      'en': '',
    },
    'agn804zu': {
      'es': 'Home',
      'en': '',
    },
  },
  // CrearDatos
  {
    'fsuo9msf': {
      'es': 'Crear Articulo',
      'en': '',
    },
    'qwkhrstq': {
      'es': 'Nuevo articulo',
      'en': '',
    },
    'z13hz1m2': {
      'es': 'Nombre',
      'en': '',
    },
    '3xqgutpp': {
      'es': 'Ingrese un nombre',
      'en': '',
    },
    'miq2vv2h': {
      'es': 'Descripcion',
      'en': '',
    },
    'wknnccmk': {
      'es': 'Ingrese una descripcion',
      'en': '',
    },
    'gpeusiob': {
      'es': 'Subir Imagen',
      'en': '',
    },
    'jdjkqzgi': {
      'es': 'Subir Producto',
      'en': '',
    },
    'mv1lsv45': {
      'es': 'Home',
      'en': '',
    },
  },
  // qrscan
  {
    'k4ptbolx': {
      'es': 'qr scan',
      'en': '',
    },
    '3cyr6i0h': {
      'es': 'Cancelar',
      'en': '',
    },
    'qr31d6tb': {
      'es': 'Home',
      'en': '',
    },
  },
  // registro
  {
    '7lku0j8j': {
      'es': 'Email',
      'en': 'E-mail',
    },
    'l7fmfwkt': {
      'es': 'Contrasena',
      'en': 'Password',
    },
    '7p1xfko5': {
      'es': 'Registrar',
      'en': 'to register',
    },
    'c0ph4gzn': {
      'es': 'iniciar sesion',
      'en': 'log in',
    },
    '14fykv5g': {
      'es': 'Home',
      'en': '',
    },
  },
  // filepicker
  {
    'q1capknv': {
      'es': 'Home',
      'en': '',
    },
  },
  // lecturaqr
  {
    'd7bl59p9': {
      'es': 'QR',
      'en': '',
    },
    '0lf9fg4j': {
      'es': 'Button',
      'en': '',
    },
    'jvhcifqs': {
      'es': 'Cancelar',
      'en': '',
    },
    'q7vw2nng': {
      'es': 'Home',
      'en': '',
    },
  },
  // HomePage
  {
    'ifrzt8ri': {
      'es': 'Buscar',
      'en': '',
    },
    '8kv1ei73': {
      'es': 'Ingrese valor',
      'en': '',
    },
    'nc0l4eve': {
      'es': 'Home',
      'en': '',
    },
    '7malgpwz': {
      'es': 'Home',
      'en': '',
    },
  },
  // Playas
  {
    'op8ndn0p': {
      'es': 'Playa',
      'en': '',
    },
    'q7gspcdz': {
      'es': 'Home',
      'en': '',
    },
  },
  // nuevaPlaya
  {
    '8r0uj8il': {
      'es': 'Nueva playa',
      'en': '',
    },
    '8pstm0us': {
      'es': 'Nombre',
      'en': '',
    },
    'gyx4r0to': {
      'es': 'Guardar',
      'en': '',
    },
    '9ucuzbs2': {
      'es': 'Field is required',
      'en': '',
    },
    'u4n3gr2e': {
      'es': 'Home',
      'en': '',
    },
  },
  // nplaya
  {
    'p3bedhpd': {
      'es': 'Playa',
      'en': '',
    },
    'pobcbdb9': {
      'es': 'Home',
      'en': '',
    },
  },
  // condicional
  {
    'e2cqn0ib': {
      'es': 'Sistolica',
      'en': '',
    },
    'r3pi9jxs': {
      'es': 'Diastolica',
      'en': '',
    },
    's0a669hl': {
      'es': 'Calcular',
      'en': '',
    },
    'vt12fttr': {
      'es': 'Resultado:',
      'en': '',
    },
    'kag1pcw3': {
      'es': 'Condicional',
      'en': '',
    },
    'fyunc2x2': {
      'es': 'Home',
      'en': '',
    },
  },
  // megusta
  {
    'g7pkf7ao': {
      'es': 'Productos',
      'en': '',
    },
    '2tf65vat': {
      'es': 'Favoritos',
      'en': '',
    },
    'cc7bd7f3': {
      'es': 'Funcion Favoritos',
      'en': '',
    },
    '4big7fhv': {
      'es': 'Home',
      'en': '',
    },
  },
  // buscador
  {
    'j2gdjzsa': {
      'es': 'Buscar Producto',
      'en': '',
    },
    'tu8ayfm3': {
      'es': 'Buscador',
      'en': '',
    },
    'xy8exexi': {
      'es': 'Home',
      'en': '',
    },
  },
  // testanancho
  {
    'k3pylt2k': {
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      'en': '',
    },
    'duv2l4px': {
      'es': 'Page Title',
      'en': '',
    },
    'zhj1zdb8': {
      'es': 'Home',
      'en': '',
    },
  },
  // animacion
  {
    '8t32cu38': {
      'es': 'Page Title',
      'en': '',
    },
    'mrh68u4z': {
      'es': 'Home',
      'en': '',
    },
  },
  // calendar
  {
    'vrxze8yw': {
      'es': 'Page Title',
      'en': '',
    },
    '307vxt7k': {
      'es': 'Home',
      'en': '',
    },
  },
  // SwitchList
  {
    'v031p0zl': {
      'es': 'Title',
      'en': '',
    },
    'jvxyol8y': {
      'es': 'Subtitle',
      'en': '',
    },
    'pkpwcdho': {
      'es': 'Switch List',
      'en': '',
    },
    '6io6y1rz': {
      'es': 'Home',
      'en': '',
    },
  },
  // logout
  {
    'ke8tsi3r': {
      'es': 'Logout',
      'en': '',
    },
    'xrtgejkm': {
      'es': 'Your Phone Number',
      'en': '',
    },
    '24wodkrb': {
      'es': 'Please enter a valid number...',
      'en': '',
    },
    'e3li9eod': {
      'es': 'Log out',
      'en': '',
    },
    '2st71anm': {
      'es': 'Home',
      'en': '',
    },
  },
  // Slidertest
  {
    '80fl7avu': {
      'es': 'Slider test',
      'en': '',
    },
    'yqmzeu1a': {
      'es': 'Home',
      'en': '',
    },
  },
  // desdeGS
  {
    'fmfakzjq': {
      'es': 'Productos',
      'en': '',
    },
    'toq8zd36': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '2h3f0zvx': {
      'es': 'Crear Producto',
      'en': '',
    },
    '67pw6i89': {
      'es': 'Nombre',
      'en': '',
    },
    '5dkq19fh': {
      'es': 'Precio',
      'en': '',
    },
    'a0j5jcq9': {
      'es': 'Guardar',
      'en': '',
    },
    '5nbt62cm': {
      'es': 'Mis productos',
      'en': '',
    },
    'rui8icv7': {
      'es': 'Home',
      'en': '',
    },
  },
  // DatosdesdeGS
  {
    '8qdflfee': {
      'es': 'Productos',
      'en': '',
    },
    'bolzuren': {
      'es': 'Nuevo',
      'en': '',
    },
    '5acm9ojg': {
      'es': 'Nombre',
      'en': '',
    },
    'w6cdkial': {
      'es': 'Precio',
      'en': '',
    },
    '70v40t4z': {
      'es': 'Guardar',
      'en': '',
    },
    'a2bbtrmv': {
      'es': 'Mis Datos',
      'en': '',
    },
    '1nhfv95u': {
      'es': 'Home',
      'en': '',
    },
  },
  // inventarioqr
  {
    'uyqju4ya': {
      'es': 'Escanner',
      'en': '',
    },
    'bsd0ylcs': {
      'es': 'Escanear',
      'en': '',
    },
    'oqk1qxt0': {
      'es': 'Cancelar',
      'en': '',
    },
    '7oiojaus': {
      'es': 'Home',
      'en': '',
    },
  },
  // qrdetalle
  {
    'auk0rly8': {
      'es': 'Detalles',
      'en': '',
    },
    'c26csg6m': {
      'es': 'Home',
      'en': '',
    },
  },
  // temporal
  {
    '0uej69ow': {
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'en': '',
    },
    'fbwprwfq': {
      'es': 'Page Title',
      'en': '',
    },
    '6878r6c9': {
      'es': 'Home',
      'en': '',
    },
  },
  // locationpicker
  {
    'l6gnn34t': {
      'es': 'Select Location',
      'en': '',
    },
    'lup2am7t': {
      'es': 'Location',
      'en': '',
    },
    'zzcwfvun': {
      'es': 'Home',
      'en': '',
    },
  },
  // nuevoqr
  {
    'pk0p2cr3': {
      'es': 'Nuevo link',
      'en': '',
    },
    '6avzzpoi': {
      'es': 'ingrese link',
      'en': '',
    },
    '0fuv4413': {
      'es': 'Crear',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'dgzu5wbo': {
      'es': '',
      'en': '',
    },
    'orov4b1y': {
      'es': '',
      'en': '',
    },
    'szev5zsb': {
      'es': '',
      'en': '',
    },
    'okbvc1nj': {
      'es': '',
      'en': '',
    },
    'njre64dj': {
      'es': '',
      'en': '',
    },
    'fyei40k8': {
      'es': '',
      'en': '',
    },
    '8eqnkxb7': {
      'es': '',
      'en': '',
    },
    't0s4w9zi': {
      'es': '',
      'en': '',
    },
    'fcdj9bh4': {
      'es': '',
      'en': '',
    },
    '4s36v27q': {
      'es': '',
      'en': '',
    },
    'oqxl6qwa': {
      'es': '',
      'en': '',
    },
    'kkgkrtpg': {
      'es': '',
      'en': '',
    },
    'x9ybrj65': {
      'es': '',
      'en': '',
    },
    'ainvjr3c': {
      'es': '',
      'en': '',
    },
    'vkmuw9b4': {
      'es': '',
      'en': '',
    },
    'is41cadm': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
