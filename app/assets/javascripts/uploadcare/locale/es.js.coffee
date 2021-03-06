##
## Please, do not use this locale as a reference for new translations.
## It could be outdated or incomplete. Always use the latest English versions:
## https://github.com/uploadcare/uploadcare-widget/blob/master/app/assets/javascripts/uploadcare/locale/en.js.coffee
##
## Any fixes are welcome.
##

uploadcare.namespace 'locale.translations', (ns) ->
  ns.es =
    uploading: 'Subiendo... Por favor espere.'
    loadingInfo: 'Cargando información...'
    errors:
      default: 'Error'
      baddata: 'Valor incorrecto'
      size: 'Archivo demasiado grande'
      upload: 'No se puede subir'
      user: 'Subida cancelada'
      info: 'No se puede cargar la información'
      image: 'Solo se permiten imágenes'
      createGroup: 'No se puede crear el grupo de archivos'
      deleted: 'El archivo fue eliminado'
    draghere: 'Arrastra un archivo aquí'
    file:
      one: '%1 archivo'
      other: '%1 archivos'
    buttons:
      cancel: 'Cancelar'
      remove: 'Eliminar'
      choose:
        files:
          one: 'Escoge un archivo'
          other: 'Escoge archivos'
        images:
          one: 'Escoge una imagen'
          other: 'Escoge imágenes'
    dialog:
      done: 'Hecho'
      showFiles: 'Mostrar archivos'
      tabs:
        names:
          'empty-pubkey': 'Bienvenido'
          preview: 'Previsualización'
          file: 'Archivos locales'
          url: 'Enlaces arbitrarios'
          camera: 'Cámara'
        file:
          drag: 'Arrastra una archivo aquí'
          nodrop: 'Sube fotos desde tu ordenador'
          cloudsTip: 'Almacenamiento en la nube<br>y redes sociales'
          or: 'o'
          button: 'Elige un archivo de tu ordenador'
          also: 'Tambien puedes seleccionarlo de'
        url:
          title: 'Archivos de la Web'
          line1: 'Coge cualquier archivo de la web.'
          line2: 'Solo danos el link.'
          input: 'Pega tu link aquí...'
          button: 'Subir'
        camera:
          capture: 'Hacer una foto'
          mirror: 'Espejo'
          retry: 'Solicitar permisos de nuevo'
          pleaseAllow:
            title: 'Por favor, permite el acceso a tu cámara'
            text: 'Este sitio ha pedido permiso para acceder a la cámara. ' +
                  'Para tomar imágenes con tu cámara debes aceptar esta petición.'
          notFound:
            title: 'No se ha detectado ninguna cámara'
            text: 'Parece que no tienes ninguna cámara conectada a este dispositivo.'
        preview:
          unknownName: 'desconocido'
          change: 'Cancelar'
          back: 'Atrás'
          done: 'Añadir'
          unknown:
            title: 'Subiendo. Por favor espera para una vista previa.'
            done: 'Saltar vista previa y aceptar'
          regular:
            title: '¿Quieres subir este archivo?'
            line1: 'Estás a punto de subir el archivo de arriba.'
            line2: 'Confírmalo por favor.'
          image:
            title: '¿Quieres subir esta imagen?'
            change: 'Cancelar'
          crop:
            title: 'Cortar y añadir esta imagen'
            done: 'Listo'
            free: 'libre'
          error:
            default:
              title: 'Ups!'
              text: 'Algo salió mal durante la subida.'
              back: 'Por favor, inténtalo de nuevo.'
            image:
              title: 'Solo se aceptan archivos de imagen.'
              text: 'Por favor, inténtalo de nuevo con otro archivo.'
              back: 'Escoger imagen'
            size:
              title: 'El archivo que has seleccinado excede el límite.'
              text: 'Por favor, inténtalo de nuevo con otro archivo.'
            loadImage:
              title: 'Error'
              text: 'No puede cargar la imagen'
          multiple:
            title: 'Has escogido %files%'
            question: '¿Quieres añadir todos estos archivos?'
            tooManyFiles: 'Has escogido demasiados archivos. %max% es el máximo.'
            tooFewFiles: 'Has escogido %files%. Hacen falta al menos %min%.'
            clear: 'Eliminar todo'
            done: 'Hecho'
      footer:
        text: 'Subido, almacenado y procesado por'


# Pluralization rules taken from:
# http://unicode.org/repos/cldr-tmp/trunk/diff/supplemental/language_plural_rules.html
uploadcare.namespace 'locale.pluralize', (ns) ->
  ns.es = (n) ->
    return 'one' if n == 1
    'other'
