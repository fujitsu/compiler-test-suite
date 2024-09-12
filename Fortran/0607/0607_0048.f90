program main
type tt
 integer::j=3
end type

select type(asc=>fun())
 class default
  call increment (asc%j) 
end select

contains
function fun()
class(tt),pointer::fun
type(tt),target::tgt
allocate(fun,source=tgt)
end function

subroutine increment(a1)
 integer, intent(in) :: a1
 if (a1 .eq. 3) print *,'PASS'
end subroutine increment
end
