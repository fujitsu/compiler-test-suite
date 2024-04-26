      module mod
        integer::i,j
      contains
        subroutine sub(*,*)
          return i+j
        end subroutine 
      end module

      program main
       use mod
        i=1
        j=1
        call sub(*10,*20)
   10   print *,'error'
   20   print *,'pass'
      end program
