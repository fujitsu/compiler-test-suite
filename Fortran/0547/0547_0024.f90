module m1
  type x1
     integer::x11=11
  end type
  type,extends(x1)::x2
     integer::x21=21
  end type
  type y1
    integer::y11=2
    class(x1),pointer:: y12(:)=>null()
    class(x1),allocatable::y13(:)
    class(* ),pointer:: y14(:)=>null()
    class(* ),allocatable::y15(:)
    class(x1),pointer:: y16=>null()
    class(x1),allocatable::y17
    class(* ),pointer:: y18=>null()
    class(* ),allocatable::y19
    integer::y20=3
  end type
  type,extends(y1)::y2
     integer::y21=4
  end type
end
subroutine s1
use m1
class(y1),pointer:: t1=>null()

if (associated(t1)) print *,10
k=0
allocate(t1)
select type (p=>t1)
  type is(y1)
    k=1
end select
allocate(y2::t1)
if (k/=1) print *,100
k=0
select type (p=>t1)
  type is(y2)
    k=1
    if (p%y21/=4) print *,11 
end select

if (t1%y11/=2) print *,101
if (t1%y20/=3) print *,109
kk=0
select type (p3=>t1)
type is(y2)
kk=1
if (p3%y21/=4) print *,120
end select
if (kk/=1) print *,102
kk=0
select type (t1)
type is(y2)
kk=1
if (t1%y21/=4) print *,121
end select
if (kk/=1) print *,102
end
call s1
print *,'pass'
end
   

