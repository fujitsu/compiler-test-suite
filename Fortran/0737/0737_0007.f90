call s1
print *,'pass'
end
module m1
contains
subroutine ss0(        )
interface
  function j4_f(p) result(a)
     character(kind=1),pointer:: a
     character(kind=1,len=*),pointer,optional::p
  end function
end interface
entry      ss1(j4_f,ii )
entry      ss2(j4_f,ii )
optional ::j4_f
character,pointer::x1
allocate (x1);x1='1'
if (present(j4_f))then
  if (ii/=1)write(6,*) "NG"
  x1=>j4_f(x1);if (x1/='1')write(6,*) "NG"
  if (.not.associated(x1,j4_f(x1)))write(6,*) "NG"
  x1=>j4_f(  );if (x1/='a')write(6,*) "NG"
else
  if (ii/=0)write(6,*) "NG"
endif
return
entry      ss3(        )
end subroutine
end module
module interface
interface
  function j4_ff(p) result(a)
     character(kind=1),pointer:: a
     character(kind=1,len=*),pointer,optional::p
  end function
end interface
end module
subroutine s1
call yy1
call yy2
end
subroutine yy1
use    m1
use    interface
character,pointer::x1
allocate (x1);x1='1'
x1=>j4_ff(x1);if (x1/='1')write(6,*) "NG"
if (.not.associated(x1,j4_ff(x1)))write(6,*) "NG"
call ss1(j4_ff,ii=1)
call ss1(      ii=0)
call ss2(j4_ff,ii=1)
call ss2(      ii=0)
call ss3
end
subroutine yy2
use    m1
use    interface
call ss1(j4_ff,ii=1)
call ss1(      ii=0)
call ss2(j4_ff,ii=1)
call ss2(      ii=0)
call ss3
end
function j4_ff(p) result(a)
  character(kind=1),pointer:: a
  character(kind=1,len=*),pointer,optional::p
  if (present(p)) then; a=>p
  else ; allocate (a);a='a'
  end if
end function

