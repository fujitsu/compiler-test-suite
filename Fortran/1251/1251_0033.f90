module m0
  interface
     subroutine sub0()
     end subroutine
  end interface
end
module m1
  use m0
  implicit none
  private
  procedure(fun1), pointer :: subPtr
  interface
     function   fun1(a,b)  result(r)
       character(*),intent(in)::a
       integer,intent(in)::b
       integer::r
     end function
  end interface
  interface operator(.w.)
     procedure subPtr
  end interface
  public :: operator(.w.) ,y
contains
  subroutine y
    subPtr=>fun1
  end subroutine
end module m1
module m2
  interface
     subroutine sub2()
       use m1
     end subroutine sub2
  end interface
end module m2

use m2
call sub2
rewind 33
read(33,*) n
if (n/=101) print *,1001
print *,'sngg520p : pass'
end
     subroutine sub2()
       use m1
       call y
       if (('1'.w.1)/=2) print *,601
     end subroutine sub2
     function   fun1(a,b)  result(r)
       character(*),intent(in)::a
       integer,intent(in)::b
       integer::r
      if (a/='1') print *,501
      if (b/=1) print *,502
      write(33,*) 101
      r=2
     end
