module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: y1234 => s1
     procedure,pass :: t1234 => s2
     generic           :: assignment( = ) => y1234
     generic           :: assignment( = ) => t1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: x12345 => q12
     procedure, pass :: w12345 => q123
     generic           :: assignment( = ) => x12345
     generic           :: assignment( = ) => w12345
  end type 
contains
 subroutine   s2(c,a)
  class(n1),intent(inout):: c
  real(8)  ,intent(in):: a
  if (c%x/=1) print *,10011
  if (a/=1.0) print *,100121
  c%x=2
 end subroutine
 subroutine  q123(c,a)
  class(w12),intent(inout):: c
  complex(8)  ,intent(in):: a
  if (c%x/=1) print *,20012
  if (a/=(1,1)) print *,30012
  c%x=3
 end subroutine
 subroutine   s1(c,a)
  class(n1),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  c%x=4
 end subroutine
 subroutine  q12(c,a)
  class(w12),intent(inout):: c
  complex  ,intent(in):: a
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  c%x=5
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
     procedure, pass :: t1234 => g123t
  end type 
  type(r123456) :: aaa
contains
 subroutine  g123t(c,a)
  class(r123456),intent(inout):: c
  real(8)  ,intent(in):: a
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  c%x=6
 end subroutine
 subroutine  g123(c,a)
  class(r123456),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  c%x=7
 end subroutine
end
use mod
  class(n1),allocatable:: v
  class(w12),allocatable:: t
  class(r123456),allocatable:: z
allocate(r123456::v,t)
v=1.
if (v%x/=7)print *,10001
t=(1,1)
if (t%x/=5)print *,10002
v%x=1
t%x=1
v=1._8
if (v%x/=6)print *,10003
t=(1,1._8)
if (t%x/=3)print *,10004
deallocate(v,t)
allocate(v,t)
v=1.
if (v%x/=4)print *,11001
t=(1,1)
if (t%x/=5)print *,11002
v%x=1
t%x=1
v=1._8
if (v%x/=2)print *,11003
t=(1,1._8)
if (t%x/=3)print *,11004
allocate(z)
z=1.
if (z%x/=7)print *,11102
z%x=1
z=(1,1)
if (z%x/=5)print *,11202
z%x=1
z=1._8
if (z%x/=6)print *,11302
z%x=1
z=(1,1._8)
if (z%x/=3)print *,11402
z%x=1
print *,'sngg602n : pass'
end

