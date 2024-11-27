        common/com/c32
        complex(16) c32 /(1., 2.)/
!$omp threadprivate(/com/)
        complex(16) c32a
        c32a = c32
        if (c32a .eq. (1., 2.)) then
          print *,"OK"
        else
          print *,"NG"
        endif
        end
