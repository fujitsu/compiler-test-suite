module n  
  type  :: n1
   integer::x=1
   contains
     generic           :: gen=> y1234
     generic           :: operator(.s.) => ay1234
     generic           :: operator(+  ) => by1234
     procedure,pass :: y1234 => s1
     procedure,pass :: ay1234 => as1
     procedure,pass :: by1234 => bs1
  end type 
  type, extends(n1)   :: w12
   contains
     generic           :: gen => x12345
     generic           :: operator(+  ) => ax12345
     generic           :: operator(.s.) => bx12345
     procedure, pass :: x12345 => q12
     procedure, pass :: ax12345 => aq12
     procedure, pass :: bx12345 => bq12
  end type 
contains
 function   as1(c,a) result(r)
  class(n1),intent(in):: c
  real     ,intent(in):: a
  logical::r
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  r=.true.
 end function
 function  aq12(c,a) result(r)
  class(w12),intent(in):: c
  complex  ,intent(in):: a
  logical::r
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  r=.false.
 end function
 function   bs1(c,a) result(r)
  class(n1),intent(in):: c
  real     ,intent(in):: a
  logical::r
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  r=.true.
 end function
 function  bq12(c,a) result(r)
  class(w12),intent(in):: c
  complex  ,intent(in):: a
  logical::r
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  r=.false.
 end function
 function   s1(c,a) result(r)
  class(n1),intent(in):: c
  real     ,intent(in):: a
  logical::r
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  r=.true.
 end function
 function  q12(c,a) result(r)
  class(w12),intent(in):: c
  complex  ,intent(in):: a
  logical::r
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  r=.false.
 end function
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, pass :: y1234 => g123 
     procedure, pass :: ay1234 => ag123 
     procedure, pass :: by1234 => bg123 
  end type 
  type(r123456) :: aaa
contains
 function  ag123(c,a) result(r)
  class(r123456),intent(in):: c
  real     ,intent(in):: a
  logical::r 
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  r=.false.
 end function
 function  bg123(c,a) result(r)
  class(r123456),intent(in):: c
  real     ,intent(in):: a
  logical::r 
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  r=.false.
 end function
 function  g123(c,a) result(r)
  class(r123456),intent(in):: c
  real     ,intent(in):: a
  logical::r 
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  r=.false.
 end function
end
use mod
  class(n1),allocatable:: v
  class(w12),allocatable:: t
  class(r123456),allocatable:: z
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
print *,'sngg592n : pass'
end

