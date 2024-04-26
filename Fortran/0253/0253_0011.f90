program main
interface
subroutine sub(d1,d2,d3,d4)
real::d1
integer::d2
character*30::d3,d4
end subroutine
end interface

real::a1
integer::a2
character*30::a3,format
format="(*(G0))"
a1=123.45
a2=1234
a3="fortran"
call sub(a1,a2,a3,format)
end program
subroutine sub(d1,d2,d3,d4)
real::d1,res1
integer::d2,res2
character*30::d3,d4,format,res3
format="(I4,A,G6.2)"
open(unit=10,file='fort.15')
write(10,d4)d2,d3,d1
close(10)
open(unit=10,file='fort.15')
read(10,format)res2,res3,res1
if (res1/=123.45)print*,101
if (res2/=1234)print*,102
if (res3/="fortran")print*,103
print*,"Pass"
end subroutine
