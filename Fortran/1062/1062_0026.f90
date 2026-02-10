module m
  interface
     module subroutine sub(a)
       interface
          integer function ext()
          end function ext
       end interface
       procedure(ext)::a
     end subroutine sub
  end interface
contains
  module subroutine sub(a)
    interface
       integer function ext()
       end function 
    end interface
    procedure(ext)::a
  end subroutine
end

use m
print *,'sngg182h : pass'
end
