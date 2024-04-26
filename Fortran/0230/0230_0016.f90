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
       integer function hoge()
       end function hoge
    end interface
    procedure(hoge)::a
  end subroutine
end

use m
print *,'pass'
end
