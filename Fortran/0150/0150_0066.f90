subroutine s1
type x1
   integer::x11
   integer::x12
end type
type,extends(x1):: x2
   integer::x21
   integer::x22
end type
type (x2)::k2

namelist /name/k1,k2
write(15,'(a)') '&name k1=1 k2%x1%x12=2 /'
rewind 15
k1=21
k2=x2(x1(-1,-1),-1,-1)
read(15,name)
if (k1/=1) print *,101
if (k2%x21/=-1) print *,1021
if (k2%x22/=-1) print *,1022
if (k2%x11/=-1) print *,1023
if (k2%x12/=2) print *,1024
end
call s1
print *,'pass'
end
