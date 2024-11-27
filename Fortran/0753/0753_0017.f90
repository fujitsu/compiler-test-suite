module m1
  type x1
   integer::w1
   contains
     procedure :: g=>p1
     generic:: gen =>g
  end type
  type,extends(x1):: x2
   integer::w2
   contains
     procedure :: gg=>p2
     generic:: gen =>gg
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
if (n==2) then
if (nn==1) print *,203
else
if (nn==1) print *,204
endif
end subroutine
subroutine p2(a,n,k)
class(x2):: a
k=k+1
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
use m1
class(x2),pointer:: v
allocate(x2:: v )
k=0
call v%gen(2)
if (k/=0) print *,711
call v%gen(2,k)
if (k/=1) print *,712
end
subroutine s2
use m1
class(x1),pointer:: v
allocate( v )
call v%gen(1)
allocate(x2:: v )
k=0
call v%gen(2)
if (k/=0) print *,701
end
call s1
call s2
print *,'pass'
end
