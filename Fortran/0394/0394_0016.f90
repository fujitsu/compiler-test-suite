module m1
  type x
     sequence
     integer:: x1
     integer:: x2
  end type
contains
subroutine s1
  type(x),parameter::v=x(1,2)
  integer,parameter,dimension(2)::a=[1,2]
call ss(v)
call tt(a) 
end subroutine s1
end
use m1
call s1
print *,'pass'
end

subroutine  ss(vv)
  type x
     sequence
     integer:: x1
     integer:: x2
  end type
type(x)::vv
if (vv%x1/=1)print *,101
if (vv%x2/=2)print *,102
end
subroutine  tt(vv)
integer vv(2)
if (any(vv/=[1,2]))print *,202
end
