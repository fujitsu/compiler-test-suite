integer :: ii
ii = 8
call sub()
contains
subroutine sub()
type ty(l1,l2)
 integer,kind ::l1,l2
 integer::arr(l1:l2)
end type

type(ty(2,4))::obj
obj%arr(4) = 10
print*,obj%arr(ii)
    end subroutine
end