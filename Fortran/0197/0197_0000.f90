implicit none
print *,'pass'
      call sub(*10)
10    end
      subroutine sub(*)
      return 1
      end
