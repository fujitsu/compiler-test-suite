      module mod1
      contains
        subroutine sub10(i,j)
          print *,'pass 1',i*j
        end subroutine
      end module

      module mod2
      contains
        subroutine sub10(i,j)
          print *,'pass 2',i+j  
        end subroutine
      end module

      subroutine sub1(i,j)
       use mod1
        call sub10(i,j)
      end subroutine

      subroutine sub2(i,j)
       use mod2
        call sub10(i,j)
      end subroutine

      program main
        i=10
        j=10
        call sub1(i,j)
        call sub2(i,j)
        print *,'pass'
      end 
