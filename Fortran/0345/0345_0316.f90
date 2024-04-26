      module m0
      contains
        subroutine s1(ii)
         integer  ii(3)
          ii=ii+1
        end subroutine
      end module

      module m1
       use m0
      contains
        subroutine s0(ii)
         integer  ii(3,2)
          ii = 1
          call s1(ii(1,2))
        end subroutine
      end module

      program main
       use m1
      integer  ii(10)
      ii=0
      call s0(ii(5))
      if (any(ii/=(/0,0,0,0,1,1,1,2,2,2/))) print *,'error'
      print *,'pass'
      end program
