subroutine s1
type x1
   integer::x11=101
   integer::x12=102
end type
type,extends(x1):: x2
   integer::x21=103
   integer::x22=104
end type
type (x2)::k2

namelist /name/k1,k2
k1=21
write(2, name)
write(1,'(a)') '&name k1=1 k2%x1=201,202 k2%x21=203,k2%x22=204 /'
rewind 1
k2=x2(x1(-1,-1),-1,-1)
read(1,name)
if (k1/=1) print *,101
if (k2%x21/=203) print *,1021
if (k2%x22/=204) print *,1022
if (k2%x11/=201) print *,1023
if (k2%x12/=202) print *,1024
k2=x2(x1(-1,-1),-1,-1)
rewind 2
read(2,name)
if (k1/=21) print *,201
if (k2%x21/=103) print *,2021
if (k2%x22/=104) print *,2022
if (k2%x11/=101) print *,2023
if (k2%x12/=102) print *,2024
end
call s1
print *,'pass'
end
