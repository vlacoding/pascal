program cc;
uses crt;
var num,nu,res,i,k:integer;
re:array[1..100]of word;
begin
writeln('--------------------ÏÅÐÅÂÎÄ ÈÇ 10ÑÑ Â 2ÑÑ--------------------');
write('×èñëî â 10ññ: ');
readln(num);
k:=1;
nu:=0;
while num>0 do begin
nu:=num mod 2;
num:=num div 2;
re[k]:=nu;
k:=k+1;
end;
write('×èñëî â 2ññ : ');
for i:=1 to k-1 do write(re[k-i]);
writeln;
end.