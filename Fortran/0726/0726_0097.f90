      module first
      contains
         subroutine convert(i,j)
         integer i, j
         j = i
         end subroutine convert
      end module first
      module second
      use first
      private :: convert_second
      interface convert
         module procedure convert, convert_second
      end interface
      contains
         subroutine convert_second(a,j)
         real a
         integer j
         j = a
         end subroutine convert_second
      end module second
      program main
      use second
      integer k
      call convert(1,k)   ; if(k/=1)write(6,*) "NG"
      call convert(2.5,k) ; if(k/=2)write(6,*) "NG"
      print *,'pass'
      end program main
