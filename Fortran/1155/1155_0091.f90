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
     generic           :: assignment( = )=> w12345
  end type 
contains
 subroutine   s2(c,a)
  class(n1),intent(inout):: c
  real(8)  ,intent(in):: a
  if (c%x/=1) print *,10011
  if (a/=1.0) print *,100121
c%x=c%x+1000
 end subroutine
 subroutine  q123(c,a)
  class(w12),intent(inout):: c
  complex(8)  ,intent(in):: a
  if (c%x/=1) print *,20012
  if (a/=(1,1)) print *,30012
c%x=c%x+1
 end subroutine
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
  c%x=c%x+100
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
  c%x=c%x+100
 end subroutine
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
if (v%x/=2)print *,902
t=(1,1)
if (t%x/=101)print *,9021,t%x
v%x=1
t%x=1
v=1._8
if (v%x/=101)print *,9029
   t=(1._8,1)
if (t%x/=2)print *,90291,t%x
deallocate(v,t)
allocate(v,t)
v=1.
if (v%x/=11)print *,902
t=(1,1)
if (t%x/=101)print *,9022
v%x=1
t%x=1
   v=1._8
if (v%x/=1001)print *,932527
   t=(1._8,1)
if (t%x/=2)print *,902527,t%x
allocate(z)
z=1.
if (z%x/=2)print *,90222
z%x=1
z=(1,1)
if (z%x/=101)print *,902227,z%x
z%x=1
z=1._8
if (z%x/=101)print *,902527,z%x
z%x=1
z=   (1._8,1)
if (z%x/=2   )print *,942527,z%x
print *,'sngg600n : pass'
end

