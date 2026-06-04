     module mod
       type :: b
          integer::dk
          !!class(*   ) ,allocatable::ma
       end type 
       type, extends(b) :: e
          integer(8)::dkx
       end type
     contains
       subroutine s2(var,nn)
         class (*), intent(out) :: var(nn    )
      k=0
      select type(p=>var(2))
       type is(e)
         !!if (allocated(p%ma)) print *,6452
         call ss(p%dk) 
       end select
       end subroutine s2
     end module mod
     print *,'sngg089t : pass'
     end 
     subroutine ss(n)
     n=1
     end

