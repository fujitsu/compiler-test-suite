     module mod
       type :: base
          integer(8)::di
       end type base
       type :: b
          integer(8)::dk
          class(base) ,allocatable::ma(:)
       end type 
       type, extends(b) :: e
          class(base),allocatable::qa(:)
       end type
     contains
       subroutine s2(var,nn)
         class (*), intent(out) :: var(nn:3  )
      k=0
      select type(p=>var(2))
       type is(e)
         if (allocated(p%ma)) print *,6452
       end select
       end subroutine s2
     end module mod
     print *,'sngg083t : pass'
     end 

