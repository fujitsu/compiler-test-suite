      subroutine sub
        integer a(10),z(10,1)
        data a/10*1/
        i=1
          where (a == 0)
            z(:,i) = 1
          else where
            z(:,i)= 1
          end where
        print *,z
      end

      program main
          call sub
          call sub
      end
