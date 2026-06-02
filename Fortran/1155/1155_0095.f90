module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: y1234 => s1
     generic           :: gen=> y1234
     generic           :: operator(.s.) => y1234
     generic           :: operator(+  ) => y1234
     procedure,pass :: y1234x => s1x
     generic           :: assignment( = )=> y1234x
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: x12345 => q12
     generic           :: gen => x12345
     generic           :: operator(+  ) => x12345
     generic           :: operator(.s.) => x12345
     procedure, pass :: x12345x => q12x
     generic           :: assignment( = )=> x12345x
  end type 
contains
 subroutine   s1x(c,a)
  class(n1),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
c%x=2
 end subroutine
 subroutine  q12x(c,a)
  class(w12),intent(inout):: c
  complex  ,intent(in):: a
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
c%x=3
 end subroutine
 function   s1(c,a)
  class(n1),intent(in):: c
  real     ,intent(in):: a
  logical::s1
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  s1=.true.
 end function
 function  q12(c,a)
  class(w12),intent(in):: c
  complex  ,intent(in):: a
  logical::q12
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  q12=.false.
 end function
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, pass :: y1234 => g123 
     procedure, pass :: y1234x => g123x 
  end type 
  type(r123456) :: aaa
contains
 subroutine  g123x(c,a)
  class(r123456),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
   c%x=-1
 end subroutine
 function  g123(c,a)
  class(r123456),intent(in):: c
  real     ,intent(in):: a
  logical::g123
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  g123=.false.
 end function
end
use mod
  class(n1),allocatable:: v
  class(w12),allocatable:: t
  class(r123456),allocatable:: z
write(47,*) 1
rewind 47
read(47,*)n
do k=1,n
allocate(r123456::v,t)
  if (v%gen( 1.))print *,801
  if (t%gen((1,1)))print *,802
deallocate(v,t)
allocate(v,t)
  if ( .not.(v%gen(1.)))print *,811
  if ( t%gen((1,1)))print *,812
allocate(z)
  if ( z%gen(1.))print *,821
  if ( z%gen((1,1)))print *,822
deallocate(v,t,z)
allocate(r123456::v,t)
  if ( v  .s.1.)print *,801
  if ( t  .s.(1,1))print *,802
deallocate(v,t)
allocate(v,t)
  if ( .not.(v  .s.1.))print *,811
  if ( t  .s.(1,1))print *,812
allocate(z)
  if ( z  .s.1.)print *,821
  if ( z  .s.(1,1))print *,822
deallocate(v,t,z)
allocate(r123456::v,t)
  if ( v   + 1.)print *,801
  if ( t   + (1,1))print *,802
deallocate(v,t)
allocate(v,t)
  if ( .not.(v   + 1.))print *,811
  if ( t   + (1,1))print *,812
allocate(z)
  if ( z   + 1.)print *,821
  if ( z   + (1,1))print *,822
deallocate(v,t,z)
allocate(r123456::v,t)
  v=   1.
  if (v%x/=-1)print *,801
  t=(1,1)
  if (t%x/=3 )print *,8012
deallocate(v,t)
allocate(v,t)
  v=   1.
  if (v%x/=2)print *,8014
  t=(1,1)
  if (t%x/=3 )print *,80125
allocate(z)
  z=   1.
  if (z%x/=-1)print *,80136
z%x=1
  z=(1,1)
  if (z%x/=3 )print *,80127
end do
print *,'sngg604n : pass'
end

