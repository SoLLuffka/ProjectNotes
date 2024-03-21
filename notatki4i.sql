-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 07:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notatki4i`
--

-- --------------------------------------------------------

--
-- Table structure for table `devlogs`
--

CREATE TABLE `devlogs` (
  `DevLogID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invitationkeys`
--

CREATE TABLE `invitationkeys` (
  `InvitationKey` varchar(255) NOT NULL,
  `IsUsed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `invitationkeys`
--

INSERT INTO `invitationkeys` (`InvitationKey`, `IsUsed`) VALUES
('1234dddd', 1),
('dddddddd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lessonnotes`
--

CREATE TABLE `lessonnotes` (
  `LessonID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `LessonNumber` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `ExampleCode` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `lessonnotes`
--

INSERT INTO `lessonnotes` (`LessonID`, `UserID`, `LessonNumber`, `Title`, `Content`, `ExampleCode`) VALUES
(1, 4, 1, 'document.write oraz alert', '<h2>Document.Write w JavaScript</h2><p><strong>Document.Write:</strong> Metoda w języku JavaScript, która jest używana do wstawiania treści bezpośrednio do dokumentu HTML w momencie jego ładowania. Możesz jej używać wewnątrz skryptów JavaScript, aby dodać treść do strony podczas jej generowania.Jednak warto zaznaczyć, że istnieją pewne ograniczenia i potencjalne problemy z tą metodą. Jeśli użyjesz jej po załadowaniu strony, może to spowodować nadpisanie całego dokumentu. Dlatego jest rzadko stosowana w profesjonalnych projektach.</p><h3>Przykład użycia metody document.write()</h3><p>Poniżej znajduje się przykład użycia metody <code>document.write()</code>:</p><pre><code class=\\\"javascript\\\">document.write(\\\"To jest przykład użycia metody document.write()\\\");</code></pre><p>Metoda <code>document.write()</code> zostanie użyta do wstawienia tekstu \\\"To jest przykład użycia metody document.write()\\\" do dokumentu HTML podczas jego ładowania.</p><h3>Przykład użycia funkcji alert()</h3><p><strong>Alerty w JavaScript:</strong> Są używane do wyświetlania prostych powiadomień na stronie internetowej. Funkcja <code>alert()</code> jest wbudowana w przeglądarki internetowe i pozwala na wyświetlenie okna dialogowego z wiadomością i przyciskiem \\\"OK\\\". Użytkownik musi kliknąć \\\"OK\\\", aby zamknąć okno.</p><p>Poniżej znajduje się przykład użycia funkcji <code>alert()</code>:</p><pre><code class=\\\"javascript\\\">alert(\\\"To jest przykład użycia funkcji alert()\\\");</code></pre><p>Funkcja <code>alert()</code> zostanie użyta do wyświetlenia okna dialogowego z tekstem \\\"To jest przykład użycia funkcji alert()\\\".</p>', ''),
(2, 4, 2, 'Zmienne w JavaScript', '<h2>Zmienne w JavaScript</h2><p><strong>Zmienna:</strong> W języku JavaScript zmienna jest używana do przechowywania danych. Może to być liczba, tekst, obiekt, czy cokolwiek innego. Definiując zmienną, rezerwujemy miejsce w pamięci, które może być używane do przechowywania wartości.</p><h3>Deklaracja zmiennej</h3><p>Aby zadeklarować zmienną w JavaScript, używamy słowa kluczowego <code>var</code>, <code>let</code> lub <code>const</code>, a następnie nadajemy jej nazwę. Na przykład:</p><pre><code class=\\\"javascript\\\">var age = 30; // Deklaracja zmiennej \\\"age\\\" i przypisanie wartości 30\r\nlet name = \\\"John\\\"; // Deklaracja zmiennej \\\"name\\\" i przypisanie tekstu \\\"John\\\"\r\nconst pi = 3.1415; // Deklaracja stałej \\\"pi\\\" i przypisanie wartości 3.1415</code></pre><h3>Typy zmiennych</h3><p>JavaScript jest językiem z dynamicznym typowaniem, co oznacza, że typ zmiennej jest automatycznie określany w trakcie wykonywania programu. Istnieją różne typy zmiennych, takie jak:</p><ul><li>Number (liczby)</li><li>String (ciągi znaków)</li><li>Boolean (wartości logiczne)</li><li>Object (obiekty)</li><li>Array (tablice)</li><li>i wiele innych...</li></ul><h3>Przykład użycia zmiennych</h3><p>Poniżej znajduje się przykład użycia zmiennych w JavaScript:</p><pre><code class=\\\"javascript\\\">var x = 5;\r\nvar y = 10;var sum = x + y;\r\nconsole.log(\\\"Suma x i y wynosi: \\\" + sum);</code></pre><p>W powyższym przykładzie zmienna <code>x</code> zawiera liczbę 5, zmienna <code>y</code> zawiera liczbę 10, a zmienna <code>sum</code> zawiera wynik dodawania <code>x</code> i <code>y</code>. Wynik zostaje wyświetlony w konsoli za pomocą funkcji <code>console.log()</code>.</p>', ''),
(3, 4, 3, 'Operatory w JavaScript', '<h2>Operatory arytmetyczne</h2><p>W JavaScript istnieje wiele operatorów arytmetycznych, które pozwalają na wykonywanie działań matematycznych.</p><h3>Dodawanie (+)</h3><p>Operator <code>+</code> jest używany do dodawania liczb. Na przykład:</p><pre><code class=\\\"javascript\\\">var suma = 5 + 3; // suma zawiera teraz 8</code></pre><h3>Odejmowanie (-)</h3><p>Operator <code>-</code> jest używany do odejmowania liczb. Na przykład:</p><pre><code class=\\\"javascript\\\">var roznica = 10 - 4; // roznica zawiera teraz 6</code></pre><h3>Mnożenie (*)</h3><p>Operator <code>*</code> jest używany do mnożenia liczb. Na przykład:</p><pre><code class=\\\"javascript\\\">var iloczyn = 6 * 2; // iloczyn zawiera teraz 12</code></pre><h3>Dzielenie (/)</h3><p>Operator <code>/</code> jest używany do dzielenia liczb. Na przykład:</p><pre><code class=\\\"javascript\\\">var iloraz = 8 / 4; // iloraz zawiera teraz 2</code></pre><h3>Średnia</h3><p>Aby obliczyć średnią z kilku liczb, można zastosować odpowiednią formułę. Na przykład:</p><pre><code class=\\\"javascript\\\">var liczby = [4, 8, 12, 16, 20];\r\nvar suma = 0;\r\nfor (var i = 0; i < liczby.length; i++) {\r\nsuma += liczby[i];\r\n}\r\nvar srednia = suma / liczby.length; // średnia zawiera teraz wynik</code></pre><h3>Liczba maksymalna</h3><p>Aby znaleźć największą liczbę w zestawie, można użyć odpowiedniej funkcji lub pętli. Na przykład:</p><pre><code class=\\\"javascript\\\">var liczby = [4, 8, 12, 16, 20];\r\nvar maksymalna = Math.max.apply(null, liczby); // maksymalna zawiera teraz największą liczbę</code></pre><h2>Operatory porównania</h2><p>Operatory porównania pozwalają porównywać wartości i zwracają wartość logiczną <code>true</code> lub <code>false</code>.</p><h3>Równa się (==)</h3><p>Operator <code>==</code> porównuje, czy dwie wartości są równe. Na przykład:</p><pre><code class=\\\"javascript\\\">\r\nvar a = 5;\r\nvar b = 5;\r\nvar wynik = a == b; // wynik zawiera teraz true</code></pre>', ''),
(4, 4, 4, 'Tablice w JavaScript', '<h2>Tablice</h2><p>W języku JavaScript tablica jest strukturą danych, która pozwala przechowywać wiele wartości w jednej zmiennej.</p><h3>Tworzenie tablicy</h3><p>Aby stworzyć tablicę w JavaScript, używamy nawiasów kwadratowych <code>[]</code> i umieszczamy w nich elementy tablicy, oddzielając je przecinkami. Na przykład:</p><pre><code class=\\\"javascript\\\">\\nvar liczby = [1, 2, 3, 4, 5];\\nvar owoce = [\\\"jabłko\\\", \\\"banan\\\", \\\"śliwka\\\"];</code></pre><h3>Dostęp do elementów</h3><p>Aby uzyskać dostęp do elementów tablicy, używamy indeksów (numerowanie od 0). Na przykład:</p><pre><code class=\\\"javascript\\\">var pierwszyElement = liczby[0]; // pierwszyElement zawiera teraz 1\r\nvar drugiElement = owoce[1]; // drugiElement zawiera teraz \\\"banan\\\"</code></pre><h2>Operacje na tablicach</h2><p>JavaScript oferuje wiele operacji do zarządzania tablicami.</p><h3>Dodawanie elementów</h3><p>Aby dodać nowy element do tablicy, możemy użyć metody <code>push()</code>. Na przykład:</p><pre><code class=\\\"javascript\\\">liczby.push(6); // Dodaje liczbę 6 na końcu tablicy</code></pre><h3>Usunięcie elementu</h3><p>Aby usunąć element z tablicy, możemy użyć metody <code>pop()</code>. Na przykład:</p><pre><code class=\\\"javascript\\\">liczby.pop(); // Usuwa ostatni element z tablicy</code></pre><h3>Długość tablicy</h3><p>Aby sprawdzić długość tablicy, używamy właściwości <code>length</code>. Na przykład:</p><pre><code class=\\\"javascript\\\">var dlugosc = liczby.length; // dlugosc zawiera teraz 5 (ilość elementów w tablicy)</code></pre><h3>Iteracja przez tablicę</h3><p>Aby przejść przez wszystkie elementy tablicy, możemy użyć pętli <code>for</code>. Na przykład:</p><pre><code class=\\\"javascript\\\">for (var i = 0; i < liczby.length; i++) {\r\nconsole.log(liczby[i]); // Wyświetla każdy element tablicy\r\n}</code></pre><h3>Inne operacje</h3><p>Istnieje wiele innych operacji, takich jak dodawanie, usuwanie, sortowanie, filtrowanie i wiele innych, które można wykonywać na tablicach w JavaScript.</p>', ''),
(5, 4, 5, 'Metoda Math w JavaScript', '<h2>Metoda Math w JavaScript</h2><p>Obiekt <code>Math</code> w języku JavaScript dostarcza wiele przydatnych funkcji matematycznych i stałych, które można wykorzystać do wykonywania różnych operacji matematycznych.</p><h2>Podstawowe operacje matematyczne</h2><p>Obiekt <code>Math</code> oferuje wiele funkcji matematycznych, takich jak:</p><h3>1. Obliczanie wartości bezwzględnej</h3><pre><code class=\\\"javascript\\\">var x = -5;\\nvar absValue = Math.abs(x); // absValue zawiera teraz 5</code></pre><h3>2. Zaokrąglanie liczby w górę i w dół</h3><pre><code class=\\\"javascript\\\">var number = 4.7;\r\nvar roundUp = Math.ceil(number); // roundUp zawiera teraz 5\r\nvar roundDown = Math.floor(number); // roundDown zawiera teraz 4</code></pre><h3>3. Zaokrąglanie liczby do najbliższej całkowitej</h3><pre><code class=\\\"javascript\\\">var rounded = Math.round(number); // rounded zawiera teraz 5</code></pre><h3>4. Potęgowanie</h3><pre><code class=\\\"javascript\\\">\r\nvar base = 2;\\nvar exponent = 3;\r\nvar result = Math.pow(base, exponent); // result zawiera teraz 8</code></pre><h3>5. Pierwiastkowanie</h3><pre><code class=\\\"javascript\\\">\r\nvar number = 9;\r\nvar squareRoot = Math.sqrt(number); // squareRoot zawiera teraz 3</code></pre><h2>Stałe matematyczne</h2><p>Obiekt <code>Math</code> zawiera także stałe matematyczne, takie jak:</p><h3>1. Liczba π (pi)</h3><pre><code class=\\\"javascript\\\">var pi = Math.PI; // pi zawiera teraz wartość π (3.141592653589793)</code></pre><h3>2. Liczba e (liczba Eulera)</h3><pre><code class=\\\"javascript\\\">var euler = Math.E; // euler zawiera teraz wartość liczby Eulera (2.718281828459045)</code></pre><h2>Inne funkcje matematyczne</h2><p>Obiekt <code>Math</code> zawiera wiele innych funkcji matematycznych, takich jak <code>sin</code>, <code>cos</code>, <code>tan</code>, <code>log</code> i wiele innych, które mogą być używane w różnych obliczeniach matematycznych.</p><p>Metoda <code>Math</code> w JavaScript jest bardzo przydatna do wykonywania różnych operacji matematycznych i korzystania z matematycznych stałych.</p>', ''),
(6, 4, 6, 'Metoda Date w JavaScript', '<h2>Obiekt Date w JavaScript</h2><p>Obiekt <code>Date</code> w języku JavaScript jest używany do pracy z datami i czasem. Pozwala on na tworzenie, manipulację oraz wyświetlanie dat i godzin.</p><h2>Tworzenie obiektu Date</h2><p>Możemy utworzyć obiekt <code>Date</code> w następujący sposób:</p><pre><code class=\\\"javascript\\\">var currentDate = new Date();</code></pre><p>Powyższy kod utworzy obiekt <code>Date</code> zawierający aktualną datę i czas.</p><h2>Pobieranie daty i czasu</h2><p>Możemy pobierać różne elementy daty i czasu z obiektu <code>Date</code>, takie jak rok, miesiąc, dzień, godzina, minuta, sekunda, milisekunda itp.</p><h3>Pobieranie roku</h3><pre><code class=\\\"javascript\\\">var year = currentDate.getFullYear(); // Pobiera rok</code></pre><h3>Pobieranie miesiąca (numer miesiąca zaczyna się od 0)</h3><pre><code class=\\\"javascript\\\">var month = currentDate.getMonth(); // Pobiera miesiąc (0 - styczeń, 11 - grudzień)</code></pre><h3>Pobieranie dnia miesiąca</h3><pre><code class=\\\"javascript\\\">var day = currentDate.getDate(); // Pobiera dzień miesiąca</code></pre><h3>Pobieranie godziny</h3><pre><code class=\\\"javascript\\\">var hours = currentDate.getHours(); // Pobiera godzinę</code></pre><h3>Pobieranie minuty</h3><pre><code class=\\\"javascript\\\">var minutes = currentDate.getMinutes(); // Pobiera minutę</code></pre><h2>Manipulacja datą i czasem</h2><p>Możemy manipulować datą i czasem, dodając lub odejmując określoną ilość czasu.</p><h3>Dodawanie dni</h3><pre><code class=\\\"javascript\\\">currentDate.setDate(currentDate.getDate() + 7); // Dodaje 7 dni</code></pre><h3>Odejmowanie godzin</h3><pre><code class=\\\"javascript\\\">currentDate.setHours(currentDate.getHours() - 3); // Odejmuje 3 godziny</code></pre><h2>Formatowanie daty i czasu</h2><p>Możemy formatować datę i czas za pomocą odpowiednich funkcji. Na przykład:</p><pre><code class=\\\"javascript\\\">var formattedDate = currentDate.toLocaleDateString(); // Formatuje datę jako ciąg znaków w lokalnym formacie\r\nvar formattedTime = currentDate.toLocaleTimeString(); // Formatuje czas jako ciąg znaków w lokalnym formacie</code></pre><h2>Podsumowanie</h2><p>Obiekt <code>Date</code> w JavaScript jest przydatnym narzędziem do pracy z datami i czasem. Pozwala na tworzenie, pobieranie, manipulację i formatowanie daty i godziny w różnych formatach.</p>', ''),
(7, 4, 7, 'Wyrażenia reglularne RegExp w JavaScript', '<h2>Wyrażenia regularne (RegExp) w JavaScript</h2><p>Wyrażenia regularne, znane jako <code>RegExp</code> w języku JavaScript, są potężnym narzędziem do manipulacji i analizy ciągów znaków. Pozwalają na wyszukiwanie, dopasowywanie i przetwarzanie tekstu w bardzo elastyczny sposób.</p><h2>Tworzenie wyrażeń regularnych</h2><p>Wyrażenia regularne można utworzyć na dwa główne sposoby: za pomocą literału lub konstruktora <code>RegExp</code>.</p><h3>Utworzenie wyrażenia regularnego za pomocą literału</h3><pre><code class=\\\"javascript\\\">var regexLiteral = /pattern/; // Literał wyrażenia regularnego</code></pre><h3>Utworzenie wyrażenia regularnego za pomocą konstruktora</h3><pre><code class=\\\"javascript\\\">var regexConstructor = new RegExp(\\\"pattern\\\"); // Konstruktor wyrażenia regularnego</code></pre><h2>Podstawowe operacje na wyrażeniach regularnych</h2><p>Wyrażenia regularne pozwalają na różne operacje, takie jak:</p><h3>Testowanie dopasowania</h3><p>Możesz sprawdzić, czy dany ciąg znaków pasuje do danego wyrażenia regularnego za pomocą metody <code>test()</code>.</p><pre><code class=\\\"javascript\\\">var regex = /abc/;\r\nvar text = \\\"abcdef\\\";\r\nvar isMatch = regex.test(text); // true, bo \\\"abc\\\" pasuje do \\\"abcdef\\\"</code></pre><h3>Wyszukiwanie dopasowań</h3><p>Możesz znaleźć wszystkie dopasowania do danego wyrażenia regularnego w tekście za pomocą metody <code>match()</code>.</p><pre><code class=\\\"javascript\\\">var regex = /abc/g;\r\nvar text = \\\"abc abc abc\\\";\r\nvar matches = text.match(regex); // [\\\"abc\\\", \\\"abc\\\", \\\"abc\\\"]</code></pre><h3>Zastępowanie dopasowań</h3><p>Możesz zastąpić wszystkie dopasowania do danego wyrażenia regularnego w tekście za pomocą metody <code>replace()</code>.</p><pre><code class=\\\"javascript\\\">var regex = /abc/g;\r\nvar text = \\\"abc abc abc\\\";\r\nvar newText = text.replace(regex, \\\"xyz\\\"); // \\\"xyz xyz xyz\\\"</code></pre><h2>Składnia wyrażeń regularnych</h2><p>Wyrażenia regularne składają się z różnych znaków i operatorów, które pozwalają na precyzyjne definiowanie wzorców. Na przykład:</p><ul><li><code>/abc/</code> - dopasowuje dowolne wystąpienie \\\"abc\\\".</li><li><code>/[0-9]/</code> - dopasowuje dowolną cyfrę od 0 do 9.</li><li><code>/\\\\d/</code> - dopasowuje dowolną cyfrę.</li><li><code>/\\\\w+/</code> - dopasowuje jedno lub więcej znaków alfanumerycznych.</li></ul><h2>Flagi</h2><p>Wyrażenia regularne mogą mieć flagi, które zmieniają ich zachowanie. Na przykład:</p><ul><li><code>/abc/g</code> - globalne dopasowywanie (szuka wszystkich wystąpień).</li><li><code>/abc/i</code> - niezależne od wielkości liter.</li></ul><h2>Podsumowanie</h2><p>Wyrażenia regularne są potężnym narzędziem do manipulacji tekstem w języku JavaScript. Pozwalają na zaawansowane operacje wyszukiwania, dopasowywania i przetwarzania ciągów znaków.</p>', ''),
(8, 4, 8, 'Obsługa Formularzy w JavaScript', '<h2>Obsługa Formularzy w JavaScript</h2><p>JavaScript jest często używany do interakcji z formularzami na stronach internetowych. Pozwala to na walidację danych, obsługę zdarzeń i dostęp do elementów formularza za pomocą skryptów.</p><h2>Pobieranie Elementów Formularza</h2><p>Aby pracować z elementami formularza, musisz najpierw uzyskać dostęp do nich za pomocą JavaScript. Możesz to zrobić za pomocą właściwości <code>document.forms</code> i <code>document.getElementById</code>.</p><h3>Pobieranie formularza za pomocą ID</h3><pre><code class=\\\"javascript\\\">var myForm = document.getElementById(\\\"myForm\\\");</code></pre><h3>Pobieranie elementów formularza za pomocą name</h3><pre><code class=\\\"javascript\\\">var inputName = document.forms[\\\"myForm\\\"][\\\"inputName\\\"];</code></pre><h2>Walidacja Formularza</h2><p>JavaScript pozwala na walidację danych wprowadzanych do formularza. Możesz sprawdzać, czy pola są wypełnione, czy dane są poprawne itp.</p><h3>Przykład: Walidacja pola wymaganego</h3><pre><code class=\\\"javascript\\\">var inputField = document.forms[\\\"myForm\\\"][\\\"email\\\"];\r\nif (inputField.value === \\\"\\\") {\r\nalert(\\\"Pole email jest wymagane.\\\");\r\nreturn false;\r\n}</code></pre><h2>Obsługa Zdarzeń Formularza</h2><p>Możesz reagować na różne zdarzenia związane z formularzem, takie jak przesłanie formularza, kliknięcie przycisku itp.</p><h3>Przykład: Obsługa zdarzenia przesłania formularza</h3><pre><code class=\\\"javascript\\\">var myForm = document.getElementById(\\\"myForm\\\");\r\nmyForm.addEventListener(\\\"submit\\\", function(event) {\r\nevent.preventDefault(); // Zatrzymaj domyślne działanie formularza    // Wykonaj swoją logikę\r\n});</code></pre><h2>Manipulacja Danymi Formularza</h2><p>JavaScript pozwala na odczytanie i zmianę danych wprowadzanych do formularza.</p><h3>Przykład: Odczytanie wartości pola</h3><pre><code class=\\\"javascript\\\">var inputField = document.forms[\\\"myForm\\\"][\\\"email\\\"];\r\nvar emailValue = inputField.value;</code></pre><h3>Przykład: Ustawienie wartości pola</h3><pre><code class=\\\"javascript\\\">\r\nvar inputField = document.forms[\\\"myForm\\\"][\\\"email\\\"];\r\ninputField.value = \\\"nowa@adres.pl\\\";</code></pre><h2>Podsumowanie</h2><p>JavaScript jest używany do obsługi formularzy na stronach internetowych. Pozwala na pobieranie, walidację, obsługę zdarzeń i manipulację danymi formularza, co umożliwia tworzenie interaktywnych aplikacji internetowych.</p>', ''),
(9, 4, 9, 'Funkcje w JavaScript', '<h2>Funkcje w JavaScript</h2><p>Funkcje są kluczowym elementem w języku JavaScript. Pozwalają na grupowanie instrukcji w celu ich wielokrotnego wykorzystania, co przyczynia się do czytelności i efektywności kodu.</p><h2>Deklaracja funkcji</h2><p>Funkcje można deklarować na kilka różnych sposobów.</p><h3>Funkcje za pomocą słowa kluczowego <code>function</code></h3><pre><code class=\\\"javascript\\\">function nazwaFunkcji(parametr1, parametr2) {\r\n// Instrukcje do wykonania    \r\nreturn wynik;\r\n}</code></pre><h3>Przykład deklaracji funkcji</h3><pre><code class=\\\"javascript\\\">function dodawanie(a, b) {\r\nvar suma = a + b;\r\nreturn suma;\r\n}</code></pre><h2>Wywołanie funkcji</h2><p>Po zdefiniowaniu funkcji można ją wywołać w dowolnym miejscu kodu.</p><h3>Wywołanie funkcji</h3><pre><code class=\\\"javascript\\\">var wynikDodawania = dodawanie(5, 3); // Wywołanie funkcji \\\"dodawanie\\\"\r\nconsole.log(\\\"Wynik dodawania: \\\" + wynikDodawania);</code></pre><h2>Parametry funkcji</h2><p>Funkcje mogą przyjmować parametry, które są przekazywane do funkcji podczas jej wywołania.</p><h3>Przykład funkcji z parametrami</h3><pre><code class=\\\"javascript\\\">function mnozenie(x, y) {\r\nvar iloczyn = x * y;\r\nreturn iloczyn;\r\n}\r\nvar wynikMnozenia = mnozenie(6, 2); // Wywołanie funkcji \\\"mnozenie\\\"\r\nconsole.log(\\\"Wynik mnożenia: \\\" + wynikMnozenia);</code></pre><h2>Zasięg zmiennych w funkcji</h2><p>Zmienne zadeklarowane wewnątrz funkcji mają zasięg lokalny i nie są widoczne poza funkcją.</p><h3>Przykład zasięgu zmiennych</h3><pre><code class=\\\"javascript\\\">\r\nfunction obliczenia(a, b) {\r\nvar suma = a + b;\r\nvar roznica = a - b;\r\nconsole.log(\\\"Suma: \\\" + suma);\r\nconsole.log(\\\"Różnica: \\\" + roznica);\r\n}\r\nobliczenia(10, 5);\r\nconsole.log(\\\"Suma poza funkcją: \\\" + suma); // Błąd - zmienna \\\"suma\\\" jest niewidoczna poza funkcją</code></pre><h2>Funkcje anonimowe</h2><p>Funkcje anonimowe to funkcje, które nie mają nazwy i są często używane jako argumenty innych funkcji.</p><h3>Przykład funkcji anonimowej</h3><pre><code class=\\\"javascript\\\">\r\nvar anonimowaFunkcja = function() {\r\nconsole.log(\\\"To jest funkcja anonimowa\\\");\r\n};\r\nanonimowaFunkcja(); // Wywołanie funkcji anonimowej</code></pre><h2>Funkcje strzałkowe (Arrow Functions)</h2><p>Funkcje strzałkowe to skrócona składnia do tworzenia funkcji w JavaScript.</p><h3>Przykład funkcji strzałkowej</h3><pre><code class=\\\"javascript\\\">var dodawanie = (a, b) => a + b;\r\nvar wynik = dodawanie(3, 4); // Wywołanie funkcji strzałkowej\r\nconsole.log(\\\"Wynik dodawania: \\\" + wynik);</code></pre><h2>Podsumowanie</h2><p>\\n    Funkcje są ważnym elementem w języku JavaScript, pozwalającym na strukturyzację kodu, wielokrotne wykorzystanie instrukcji oraz przekazywanie parametrów i zwracanie wartości. Zrozumienie zasad deklaracji i wywoływania funkcji jest kluczowe dla skutecznego programowania w JavaScript.</p>', ''),
(10, 4, 10, 'Pętle w JavaScript', '<h2>Pętle w JavaScript</h2><p>Pętle są fundamentalnym elementem każdego języka programowania, w tym również w JavaScript. Pozwalają na wykonywanie określonych instrukcji wielokrotnie, co jest przydatne do przetwarzania danych, iterowania przez tablice i wiele innych zastosowań.</p><h2>For Loop</h2><p>Pętla <code>for</code> jest jednym z najczęściej używanych rodzajów pętli w JavaScript. Pozwala na wykonanie określonej liczby iteracji.</p><h3>Składnia pętli <code>for</code></h3><pre><code class=\\\"javascript\\\">for (inicjalizacja; warunek; krok) {\r\n// Instrukcje do wykonania\r\n}</code></pre><h3>Przykład pętli <code>for</code></h3><pre><code class=\\\"javascript\\\">for (var i = 0; i < 5; i++) {\r\nconsole.log(\\\"Iteracja \\\" + i);\r\n}</code></pre><h2>While Loop</h2><p>Pętla <code>while</code> wykonuje instrukcje, dopóki warunek jest spełniony.</p><h3>Składnia pętli <code>while</code></h3><pre><code class=\\\"javascript\\\">while (warunek) {\r\n// Instrukcje do wykonania\r\n}</code></pre><h3>Przykład pętli <code>while</code></h3><pre><code class=\\\"javascript\\\">\r\nvar i = 0;\r\nwhile (i < 5) {\r\nconsole.log(\\\"Iteracja \\\" + i);\r\ni++;\r\n}</code></pre><h2>Do...While Loop</h2><p>Pętla <code>do...while</code> najpierw wykonuje instrukcje, a następnie sprawdza warunek. Zapewnia, że instrukcje zostaną wykonane przynajmniej raz.</p><h3>Składnia pętli <code>do...while</code></h3><pre><code class=\\\"javascript\\\">do {\r\n// Instrukcje do wykonania\r\n} while (warunek);</code></pre><h3>Przykład pętli <code>do...while</code></h3><pre><code class=\\\"javascript\\\">var i = 0;\r\ndo {    \r\nconsole.log(\\\"Iteracja \\\" + i);\r\ni++;\r\n} while (i < 5);</code></pre><h2>For...In Loop</h2><p>Pętla <code>for...in</code> służy do iterowania przez właściwości obiektu.</p><h3>Składnia pętli <code>for...in</code></h3><pre><code class=\\\"javascript\\\">for (var property in object) {\r\n// Instrukcje do wykonania\r\n}</code></pre><h3>Przykład pętli <code>for...in</code></h3><pre><code class=\\\"javascript\\\">var person = {\r\nname: \\\"John\\\",\r\nage: 30,\r\ncity: \\\"New York\\\"\r\n};\r\nfor (var key in person) {    console.log(key + \\\": \\\" + person[key]);\r\n}</code></pre><h2>For...Of Loop</h2><p>Pętla <code>for...of</code> służy do iterowania przez elementy zbiorów takich jak tablice.</p><h3>Składnia pętli <code>for...of</code></h3><pre><code class=\\\"javascript\\\">for (var element of iterable) {\r\n// Instrukcje do wykonania\r\n}</code></pre><h3>Przykład pętli <code>for...of</code></h3><pre><code class=\\\"javascript\\\">var colors = [\\\"red\\\", \\\"green\\\", \\\"blue\\\"];for (var color of colors) {\r\nconsole.log(\\\"Kolor: \\\" + color);\r\n}</code></pre><h2>Podsumowanie</h2><p>Pętle są niezbędnym narzędziem programistycznym w JavaScript, pozwalającym na wielokrotne wykonywanie instrukcji w zależności od określonych warunków. Zrozumienie różnych rodzajów pętli i ich składni jest kluczowe dla skutecznego tworzenia skryptów w JavaScript.</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Nickname` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `InvitationCode` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FirstName`, `LastName`, `Nickname`, `Password`, `InvitationCode`, `Role`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', '6879245832', 'admin'),
(2, 'Test', 'Test', 'Test', '$2y$10$QW5PcOCdtfa3.sDoy/h6nuwvXJzUAAnO74uVu1I6nj8djuf.sMuMS', '234234234', NULL),
(3, 'Test2', 'Test2', 'Test2', '$2y$10$jQj.Ube4ud56RLeUPuapwe7Q8iTIjPD2RE1XjKgQoO8BdDoopLcNG', '423424234', 'user'),
(4, 'Test', 'Test', 'Test3', '$2y$10$QBQ/kVOSVKzBPzRC5gnTkuMvEh.BtdSCtnz9TGkPRF9imdk/FanNm', '1234dddd', 'user'),
(5, 'Test', 'Test', 'Test5', '$2y$10$4gjkiZTzq8RZip2UEzhocu4475jBbeMmXzOEUZb2uXsAMVAxq/vtu', 'dddddddd', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devlogs`
--
ALTER TABLE `devlogs`
  ADD PRIMARY KEY (`DevLogID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `invitationkeys`
--
ALTER TABLE `invitationkeys`
  ADD PRIMARY KEY (`InvitationKey`);

--
-- Indexes for table `lessonnotes`
--
ALTER TABLE `lessonnotes`
  ADD PRIMARY KEY (`LessonID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Nickname` (`Nickname`),
  ADD UNIQUE KEY `InvitationCode` (`InvitationCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devlogs`
--
ALTER TABLE `devlogs`
  MODIFY `DevLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessonnotes`
--
ALTER TABLE `lessonnotes`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `devlogs`
--
ALTER TABLE `devlogs`
  ADD CONSTRAINT `devlogs_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `lessonnotes`
--
ALTER TABLE `lessonnotes`
  ADD CONSTRAINT `lessonnotes_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
