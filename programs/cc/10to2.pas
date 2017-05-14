program cc;
var num,nu,res,i,k:integer;
re:array[1..100]of word;
begin
write('Число в 10сс: ');
readln(num);
k:=1;
nu:=0;
while num>0 do begin
nu:=num mod 2;
num:=num div 2;
re[k]:=nu;
k:=k+1;
end;
write('Число в 2сс : ');
for i:=1 to k-1 do write(re[k-i]);
writeln;
end.
