module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: y1234 => s1
     generic           :: assignment( = ) => y1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: x12345 => q12
     generic           :: assignment( = ) => x12345
  end type 
contains
 subroutine   s1(c,a)
  class(n1),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
 c%x=c%x+10
 end subroutine
 subroutine  q12(c,a)
  class(w12),intent(inout):: c
  complex  ,intent(in):: a
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
 c%x=c%x+1
 end subroutine
end
module nnd
use n
  type, extends(w12) :: i123456
    integer::gg
  end type
end
module n2
use nnd
  type, extends(i123456) :: zi123456
    integer::gt
  end type
end
module mod
  use n2
  type, extends(zi123456) :: r123456
   contains
     procedure, pass :: y1234 => g123 
  end type 
  type(r123456) :: aaa
contains
 subroutine  g123(c,a)
  class(r123456),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
 c%x=c%x+1
 end subroutine
end
use mod
  class(n1),allocatable:: v
  class(w12),allocatable:: t
  class(r123456),allocatable:: z
allocate(r123456::v,t)
v=1.
if (v%x/=2) print *,701
t=(1,1)
if (t%x/=2) print *,702
deallocate(v,t)
allocate(v,t)
v=1.
if (v%x/=11) print *,7012
t=(1,1)
if (t%x/=2) print *,70122
allocate(z)
z=1.
if (z%x/=2) print *,701221
z%x=1
z=(1,1)
if (z%x/=2) print *,701222
print *,'sngg598n : pass'
end

