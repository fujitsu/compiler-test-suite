module m3
  implicit none
  interface
    subroutine sub(b)
    implicit none
    interface
       integer pure function k()
       end
    end interface
    integer :: b(k())
    end subroutine
  end interface
end


use m3
integer::b(8)
call sub(b)
print *,'sngg219h : pass'
end
   integer pure function k()
   k=2
  end
    subroutine sub(b)
    implicit none
    interface
       integer pure function k()
       end
    end interface
    integer :: b(k())
    if (size(b) /= 2) print *,4,size(b)
  end 
