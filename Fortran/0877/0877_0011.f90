module m1
type x
  integer::x1
end type
end
interface
subroutine su(a) 
type x
  sequence
  integer::x1
end type
type(x)     :: a
end subroutine
end interface

type x
  sequence
  integer::x1
end type
type(x)  :: xx
call su(xx)
end

subroutine su(a) 
class(*)  :: a
end subroutine
