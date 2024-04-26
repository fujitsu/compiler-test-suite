module  m1
  implicit none
  private
  public:: pi,s1
  type pi
    sequence 
    integer(4)::x1
  end type
  contains
  subroutine s1
   type(pi),pointer::ps
   type(pi),target::pt
integer(4),pointer::pp
   allocate(ps)
   pp=>ps%x1
  end subroutine
end
use m1
call s1
print *,'pass'
end

