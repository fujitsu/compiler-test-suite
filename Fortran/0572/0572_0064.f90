           interface
              subroutine fun_int(x) BIND(C)
                 type(*) :: x(*)
               end subroutine
          end interface
           integer :: arr(4)
           call sub3(arr(1:4:2))
           print*,"PASS"
        contains
           SUBROUTINE sub3(aa)
           IMPLICIT NONE
           type(*)::aa(:)
          if(lbound(aa,1) /=1 ) print*,'403'
          if(ubound(aa,1) /=2 ) print*,'404'
          if(size(aa,1) /= 2) print*,'405'
          call fun_int(aa)
           END SUBROUTINE sub3
        End
       
         subroutine fun_int(x) BIND(C)
              type(*) :: x(*)
               if(rank(x)/=1)print*,'101'
               if(any(lbound(x)/=1))print*,'102'
               if(is_contiguous(x).neqv. .true.)print*,'103'
         end subroutine

