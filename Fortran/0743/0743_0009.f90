module mod01
contains
recursive function i01fun(i) result(ia)
type ty1
integer,allocatable:: j01(: )
end type
type(ty1) :: s
integer,allocatable:: ia(:)
integer ii(1)
allocate(ia(i))
ia=2
return
entry i02fun(i) result(ia)
s=ty1(i01fun(i+1))
allocate(ia(i))
ia=1
end function
end

use mod01
integer i(2)
i(1:1)=i01fun(1)
write(1,*)i(1:1)
i(1:2)=i02fun(2)
write(1,*)i
rewind 1
read(1,*) k;if (k/=2)print *,'error-1'
read(1,*) k1,k2;if (any((/k1,k2/)/=1))print *,'error-2'
print *,'pass'

end
