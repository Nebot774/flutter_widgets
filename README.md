# widgets_flutter

# Nombre del Proyecto de Comarcas

Este proyecto es una aplicación Flutter que proporciona información sobre las comarcas de la Comunitat Valenciana, incluyendo detalles como el clima, población, y más."

## Características

- Información detallada de cada comarca.
- Visualización del clima actual en diferentes comarcas.
- Navegación intuitiva entre las pantallas de comarcas.


## Estructura de Clases

El proyecto está estructurado en varias clases Dart, cada una con su propósito específico dentro de la aplicación:

- `ComarcaCard.dart`: Define un widget reutilizable que muestra una tarjeta con información resumida de una comarca.

- `ComarcasAlacant.dart`: Contiene la pantalla que lista todas las comarcas pertenecientes a la provincia de Alicante. Permite a los usuarios seleccionar una comarca para ver más detalles.

- `ComarcasValencia.dart`: Similar a `ComarcasAlacant.dart`, pero para las comarcas de la provincia de Valencia.

- `ComarquesCastello.dart`: Ofrece una funcionalidad similar a las dos clases anteriores, pero se centra en las comarcas de la provincia de Castellón.

- `InformacionComarca.dart`: Proporciona una pantalla detallada para una comarca específica, mostrando información extensa como la capital de la comarca, población y una descripción.

- `main.dart`: El punto de entrada de la aplicación Flutter. Configura la aplicación y carga la pantalla inicial.

- `provincias.dart`: Contiene datos y lógica relacionados con las provincias de la Comunitat Valenciana.

- `TiempoComarca.dart`: Muestra la información del clima para una comarca seleccionada, incluyendo detalles como la temperatura actual y la dirección del viento.

- `comarques.dart`: Un archivo de utilidades que podría estar proporcionando datos o lógica compartida a través de la aplicación.
- 
## Tecnologías Utilizadas

- Flutter
- Dart
- API de OpenWeatherMap

## Instalación y Ejecución

