integer function intb(i)
intb=i*10
end function

interface inta
integer function intb(i)
integer :: i
end function
end interface
type inta(ii)
 integer ,kind:: ii=1
 real    ::  i
end type
type(inta(1)) :: aaa
aaa=inta(1)(i=1)
if (aaa%i.ne.1) print *,'err'
print *,'pass'
end
