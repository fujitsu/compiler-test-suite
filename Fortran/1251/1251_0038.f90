module m0
  interface
     subroutine sub0()
     end subroutine
     subroutine sub1(a,b)
       character(*),intent(out)::a
       integer,intent(in)::b
     end subroutine
  end interface
end
module m1
  use m0
  implicit none
  private
  procedure(sub1), pointer :: subPtr
  interface assignment(=)
     procedure subPtr
  end interface
  public :: assignment(=) ,y
contains
  subroutine y
    subPtr=>sub1
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
rewind 38
read(38,*) n
if (n/=101) print *,1001
print *,'sngg525p : pass'
end
     subroutine sub2()
       use m1
       character::b
       call y
       b=1
       if (b/=char(1)  ) print *,601
     end subroutine sub2
     subroutine sub1(a,b)
       character(*),intent(out)::a
       integer,intent(in)::b
       a=char(b)
      write(38,*) 101
     end subroutine
