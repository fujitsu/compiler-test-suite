module m1
 type a
   integer::a1
   integer::a2
 end type
 type(a):: x
end
use m1
namelist /nam/ i,x,j
x=a(2,3)
i=1;j=4
write(1,nam)
print *,'pass'
end
