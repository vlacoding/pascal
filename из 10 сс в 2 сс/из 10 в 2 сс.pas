program cc;
uses crt;
var num,nu,res,i,k:integer;
re:array[1..100]of word;
begin
writeln('--------------------������� �� 10�� � 2��--------------------');
write('����� � 10��: ');
readln(num);
k:=1;
nu:=0;
while num>0 do begin
nu:=num mod 2;
num:=num div 2;
re[k]:=nu;
k:=k+1;
end;
write('����� � 2�� : ');
for i:=1 to k-1 do write(re[k-i]);
writeln;
end.