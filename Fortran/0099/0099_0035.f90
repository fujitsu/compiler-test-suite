module m
integer, dimension(4) :: a
character,allocatable :: b(:)
real,allocatable :: c(:)
logical,allocatable :: d(:)
complex,allocatable :: e(:)
integer :: a1(1),b1(1),c1(1),d1(1),e1(1)
logical :: f
    
contains
function fun(x)
  logical :: x
  logical :: fun
  x=.true.
  fun=f
end function fun

function fun1(y)
  integer :: y(:)
  integer :: fun1(4)
  y=[2,4,6,4]
  fun1=y
end function fun1


function fun2(z)
  character,allocatable :: z(:)
  character :: fun2(4)
  allocate(z(4))
  z=['A','B','C','B']
  fun2=z
end function fun2

function fun4(m1)
  logical,allocatable :: m1(:)
  logical :: fun4(4)
    allocate(m1(4))
  m1=[.TRUE.,.FALSE.,.FALSE.,.TRUE.]
  fun4=m1
end function fun4

function fun3(n)
  real,allocatable :: n(:)
  real :: fun3(4)
  allocate(n(4))
  n=[2.2,3.3,4.4,3.3]
  fun3=n
end function fun3

function fun5(o)
  complex,allocatable :: o(:)
  complex :: fun5(4)
  o=[(2,2),(3,3),(4,4),(3,3)]
  fun5=o
end function fun5

end module m
program pro
use m
a1= findloc(ARRAY = fun1(a),VALUE = a(2),DIM = 1, MASK = [.TRUE.,.FALSE.,.TRUE.,.TRUE.],kind=4,back=fun(f))
b1= findloc(ARRAY = fun2(b),VALUE = b(2),DIM = 1, MASK = [.TRUE.,.FALSE.,.TRUE.,.TRUE.],kind=4,back=fun(f))
c1= findloc(ARRAY = fun3(c),VALUE = c(2),DIM = 1, MASK = [.TRUE.,.FALSE.,.TRUE.,.TRUE.],kind=4,back=fun(f))
if(a1(1) /= 4)print*,101,a1
if(b1(1) /= 4)print*,102
if(c1(1) /= 4)print*,103
print*,"pass"
end
