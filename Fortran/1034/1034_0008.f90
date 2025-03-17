      program main
      do i=1,1000
       call sub
      end do
      print *,'pass'
      end program main

      subroutine sub
        type z
          integer(4)::zz(5000)
        end type
        type(z)::b
         b%zz(5)=5
      end 
