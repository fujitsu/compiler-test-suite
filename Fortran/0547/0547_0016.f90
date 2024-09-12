module m1
  type x1
     integer::x11
  end type
  type y1
    integer::y11
    class(x1),pointer:: y12(:)
  end type
  type,extends(y1)::y2
     integer::y21
  end type
end
subroutine s1
use m1
type (y1):: t1
class(x1),pointer:: y22(:)

nullify(t1%y12,y22)
k=0
allocate(y22(0))
select type (p=>y22)
  type is(x1)
    k=1
end select
if (k/=1) print *,103
k=0
allocate(t1%y12(0))
select type (p=>t1%y12)
  type is(x1)
    k=1
end select
if (k/=1) print *,102
end
call s1
print *,'pass'
end
   

