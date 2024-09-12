integer:: a(1)=0
do 10 j=1,1
do 10,concurrent(i=1:j)
 a(i)=1
10 continue
if (a(1)/=1) print *,101
print *,'pass'
end
