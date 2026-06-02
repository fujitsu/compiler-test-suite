intrinsic index

type ty1
 procedure(index),pointer,nopass :: pip
end type
type (ty1) :: t1
procedure(index),pointer :: pip

pip => index

if (pip('abc','b').ne.index('abc','b')) print *,'fail'

t1 = ty1(pip)

if (t1%pip('abc','b').ne.index('abc','b')) print *,'fail'

t1 = ty1(index)

if (t1%pip('abc','b').ne.index('abc','b')) print *,'fail'

t1 = ty1(t1%pip)

if (t1%pip('abc','b').ne.index('abc','b')) print *,'fail'

call sub(pip)

if (pip('abc','b').ne.index('abc','b')) print *,'fail'

print *,'pass'

contains

 subroutine sub(pip)
  procedure(index),pointer :: pip
  pip => index
 end subroutine

 subroutine sub2(pi)
  procedure(index) :: pi
 end subroutine
end
