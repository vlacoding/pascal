program zadanie1;  // автор программы: Максим Власов
var number:integer;
var numb2r:string;
const y='YES';
const n='NO';
begin
readln(number);
numb2r:=IntTostr(number);
if (numb2r[1]=numb2r[4]) and (numb2r[2]=numb2r[3])
then writeln(y)
else writeln(n);
end.