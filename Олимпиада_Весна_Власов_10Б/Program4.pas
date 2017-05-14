program zadanie4; // все прокомментировано!
// автор программы: Максим Власов

var n,counter,counte,day1,day2,day3,days,min,max:integer;  // определим малость целочисленных переменных
var city_data:string;                                      // и строковых, конечно, тоже :)
var city_list:array[1..31] of string;                      // куда же без массивов?
var city_days:array[1..31] of integer;
var city_3day:array[1..3] of string;
const max_message='Максимальные осадки в городе:';  // для ускорения работы
const min_message='Миниимальные осадки в городе:';  // программы зададим
const mm=' мм';                                     // несколько констань

begin

n:=0;              // обнулим все к чертям!
counter:=0;
day1:=0;
day2:=0;
day3:=0;
days:=0;
min:=0;
max:=0;

readln(n);                                       // получим кол-во городов

for counter:=1 to n do                           // для каждого города
    begin
         readln(city_data);                      // введем данные
         for counte:=1 to length(city_data) do            // расчлененка!!
         begin                                            // поехали...
              if city_data[counte]=' ' then
              begin
              city_list[counter]:=copy(city_data,1,counte-1);   // забьем название города в массив
              days:=StrToInt(copy(city_data,counte+1,2))+StrToInt(copy(city_data,counte+4,2))+StrToInt(copy(city_data,counte+7,2));   //  Вычленим из строки цифры, переведем в числа и посчитаем смумму осадков за 3 дня
              break;   // выйдем из цикла, дабы предотвратить повторное вычленение
              end;
         end;
    city_days[counter]:=days;  // забьем кол-во осадков в массив
    end;

max:=city_days[1];             // найдем макс.
for counter:=2 to n do
    if city_days[counter]>max then max:=city_days[counter];

min:=city_days[1];             // найдем мин.
for counter:=2 to n do
    if city_days[counter]<min then min:=city_days[counter];

writeln(max_message);          // выведем макс.
for counter:=1 to n do
    if city_days[counter]=max then
    writeln(city_list[counter],' ',max,mm);

writeln(min_message);          // выведем мин.
for counter:=1 to n do
    if city_days[counter]=min then
    writeln(city_list[counter],' ',min,mm);
    
end.                           // все круто!