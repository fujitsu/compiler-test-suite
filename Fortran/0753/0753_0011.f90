module m1
  type x1
   integer::w1
   contains
     procedure :: p1
  end type
  type,extends(x1):: x2
   integer::w2
  end type
contains
subroutine p1(a,n)
class(x1):: a
nn=1
select type(a)
  type is(x1)
    if (n/=1) print *,1
    nn=2
  type is(x2)
    if (n/=2) print *,2
    nn=3
end select
if (nn==1) print *,103
end subroutine
end
subroutine s1
use m1
class(x1),pointer:: v
allocate( v )
call v%p1(1)
allocate(x2:: v )
call v%p1(2)
end
call s1
print *,'pass'
end
