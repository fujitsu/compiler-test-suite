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
         class (b), intent(out) :: var(nn    )
      k=0
         call ss(var(1)%dk) 
       end subroutine s2
     end module mod
     print *,'sngg090t : pass'
     end 
     subroutine ss(n)
     
     n=1
     end

