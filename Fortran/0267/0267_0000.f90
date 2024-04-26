         module m0
         type :: ty0
         integer :: ii
         contains
         FINAL::destructor
         end type
        
        contains
        subroutine destructor(dmy)
        IMPLICIT NONE
        TYPE(ty0), INTENT(INOUT):: dmy(:)
        print*,'destructor call ',dmy%ii
        end subroutine

        end module
       
      use m0
        call sub
        print*, "PASS"
       
        contains
        subroutine s1(d1)
         type(ty0),INTENT(in)  :: d1(:)
         integer :: v1 
          v1 = 2
          v1=v1+d1(1)%ii
          if(v1 .ne. 3) print*,"121"
        end subroutine

        subroutine sub()
          integer :: ii
          ii = 1
          call s1([ty0(ii)])   
        end subroutine
        end
