module m
  interface
     module subroutine sub(a)
       interface
          integer function hoge()
          end function
       end interface
       procedure(hoge)::a
     end subroutine sub
  end interface
contains
  module subroutine sub(a)
    interface
       integer function hoge()
       end function hoge
    end interface
    procedure(hoge)::a
  end subroutine
end

use m
print *,'sngg183h : pass'
end
