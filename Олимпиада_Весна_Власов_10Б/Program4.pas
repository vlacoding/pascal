program zadanie4; // ��� �����������������!
// ����� ���������: ������ ������

var n,counter,counte,day1,day2,day3,days,min,max:integer;  // ��������� ������� ������������� ����������
var city_data:string;                                      // � ���������, �������, ���� :)
var city_list:array[1..31] of string;                      // ���� �� ��� ��������?
var city_days:array[1..31] of integer;
var city_3day:array[1..3] of string;
const max_message='������������ ������ � ������:';  // ��� ��������� ������
const min_message='������������ ������ � ������:';  // ��������� �������
const mm=' ��';                                     // ��������� ��������

begin

n:=0;              // ������� ��� � ������!
counter:=0;
day1:=0;
day2:=0;
day3:=0;
days:=0;
min:=0;
max:=0;

readln(n);                                       // ������� ���-�� �������

for counter:=1 to n do                           // ��� ������� ������
    begin
         readln(city_data);                      // ������ ������
         for counte:=1 to length(city_data) do            // �����������!!
         begin                                            // �������...
              if city_data[counte]=' ' then
              begin
              city_list[counter]:=copy(city_data,1,counte-1);   // ������ �������� ������ � ������
              days:=StrToInt(copy(city_data,counte+1,2))+StrToInt(copy(city_data,counte+4,2))+StrToInt(copy(city_data,counte+7,2));   //  �������� �� ������ �����, ��������� � ����� � ��������� ������ ������� �� 3 ���
              break;   // ������ �� �����, ���� ������������� ��������� ����������
              end;
         end;
    city_days[counter]:=days;  // ������ ���-�� ������� � ������
    end;

max:=city_days[1];             // ������ ����.
for counter:=2 to n do
    if city_days[counter]>max then max:=city_days[counter];

min:=city_days[1];             // ������ ���.
for counter:=2 to n do
    if city_days[counter]<min then min:=city_days[counter];

writeln(max_message);          // ������� ����.
for counter:=1 to n do
    if city_days[counter]=max then
    writeln(city_list[counter],' ',max,mm);

writeln(min_message);          // ������� ���.
for counter:=1 to n do
    if city_days[counter]=min then
    writeln(city_list[counter],' ',min,mm);
    
end.                           // ��� �����!