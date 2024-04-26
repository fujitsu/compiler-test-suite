type intba
 real    ::  i
end type
type(intba) :: aa
if (intb(1).ne.10) print *,'err'
aa=intba(1)
if (aa%i.ne.1.0_4) print *,'err'
print *,'pass'
contains
integer function intb(i)
intb=i*10
end function
end
