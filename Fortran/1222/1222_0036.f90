     module mod
       type :: b
          integer(8)::dk
          class(*   ) ,allocatable::ma(:)
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
         if (allocated(p%ma)) print *,6452
         p%dk=1
       end select
       end subroutine s2
     end module mod
     print *,'sngg087t : pass'
     end 

