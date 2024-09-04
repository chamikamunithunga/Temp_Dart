import 'dart:html';

void main() {
  querySelector('button')!.onClick.listen((event) {
    convert();
  });
}

void convert() {
  // Get the Celsius temperature from the input field
  double celsius = double.parse((querySelector('#celsius') as InputElement).value!);

  // Convert Celsius to Fahrenheit
  double fahrenheit = (celsius * 9 / 5) + 32;

  // Display the result in the page
  (querySelector('#result') as HeadingElement).text = 'Fahrenheit: $fahrenheit°F';
}
