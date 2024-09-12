module m3
contains
    subroutine sub(k)
    interface
      subroutine k()
      end
    end interface
    end
end

use m3
    interface
      subroutine nn()
      end
    end interface
call sub(nn)
print *,'pass'
end
      subroutine nn()
      end
