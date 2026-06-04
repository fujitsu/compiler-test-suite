module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: y => s1
     generic           :: assignment( = ) => y
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: y      => q12
  end type 
contains
 subroutine   s1(c,a)
  class(n1),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  c%x=c%x+1
 end subroutine
 subroutine  q12(c,a)
  class(w12),intent(inout):: c
 real      ,intent(in):: a
  if (c%x/=1) print *,2001
  if (a/=1) print *,3001
  c%x=c%x+10
 end subroutine
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, pass :: y => g123 
  end type 
  type(r123456) :: aaa
contains
 subroutine  g123(c,a)
  class(r123456),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  c%x=c%x+1000
 end subroutine
end
use mod
  class(n1),pointer    :: v
allocate(v)
  v= 1.
  if (v%x/=2   ) print *,901,v%x
allocate(w12::v)
  v= 1.
  if (v%x/=11) print *,902,v%x
allocate(r123456::v)
  v= 1.
  if (v%x/=1001) print *,903,v%x
print *,'sngg719n : pass'
end

