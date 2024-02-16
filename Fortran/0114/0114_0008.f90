        module mod
          integer::ii,jj
          equivalence(ii,jj)
         contains
        subroutine sub()
            jj=jj+1
            if (ii/=100) print *,'error',ii,jj
          end subroutine
        end module

        program inl
         use mod
          jj=99
          call sub()
          print *,'pass'
        end program

