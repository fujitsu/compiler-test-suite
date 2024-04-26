      program main
        call sub()
        print *,'pass'
      end program

      subroutine sub()
        ii=1
        call r_sub0(ii)
      end subroutine

      recursive subroutine r_sub0(ii)
        if (ii.gt.10) return
        ii=ii+1
        call r_sub1(ii) 
      end subroutine

      recursive subroutine r_sub1(ii)
        ii=ii+1
        call r_sub2(ii) 
      end subroutine

      recursive subroutine r_sub2(ii)
        ii=ii+1
        call r_sub0(ii) 
      end subroutine
