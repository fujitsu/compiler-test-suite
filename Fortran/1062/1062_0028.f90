module m
  interface
     module subroutine sub(a)
       interface
          integer function ext(a,b)
            integer::a,b
          end function ext
       end interface
       procedure(ext)::a
     end subroutine sub
  end interface
contains
  module subroutine sub(a)
    interface
       integer function ext(c,d)
         integer::c,d
       end function ext
    end interface
    procedure(ext)::a
  end subroutine
end

use m
print *,'sngg184h : pass'
end
