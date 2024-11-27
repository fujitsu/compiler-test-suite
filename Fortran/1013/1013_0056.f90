        interface 
          subroutine sub(c32)
          complex(16),value :: c32
          end subroutine
        end interface
        common/com/c32
        complex(16) c32
!$omp threadprivate(/com/)
        c32 = (1., 2.)
        call sub(c32)
        end

        subroutine sub(c32)
        complex(16),value :: c32
        if (c32 .eq. (1., 2.)) then
          print *,"OK"
        else
          print *,"NG"
        endif
        end subroutine
        
