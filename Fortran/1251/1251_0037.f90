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
  procedure(sub1), pointer :: subPtr
  interface
     subroutine sub1(a,b)
       character(*),intent(out)::a
       integer,intent(in)::b
     end subroutine
  end interface
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
rewind 37
read(37,*) n
if (n/=101) print *,1001
print *,'sngg524p : pass'
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
      write(37,*) 101
     end subroutine
