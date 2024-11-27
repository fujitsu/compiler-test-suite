module m1
  type x1
   integer::w1
   contains
     procedure :: g=>p1
  end type
contains
subroutine p1(a,n)
class(x1):: a
nn=1
select type(a)
  type is(x1)
    if (n/=1) print *,1
    nn=2
end select
if (n==2) then
if (nn/=1) print *,203
else
if (nn==1) print *,204
endif
end subroutine
end
module m2
use m1
  type,extends(x1):: x2
   integer::w2
   contains
     procedure :: gg=>p2
  end type
contains
subroutine p2(a,n)
class(x2):: a
nn=1
select type(a)
  type is(x2)
    if (n/=2) print *,2
    nn=3
end select
if (nn==1) print *,103
end subroutine
end
subroutine s1
use m2
class(x2),pointer:: v
allocate(x2:: v )
call v%gg(2)
end
subroutine s2
use m2
class(x1),pointer:: v
allocate( v )
call v%g(1)
allocate(x2:: v )
call v%g(2)
end
call s1
call s2
print *,'pass'
end
