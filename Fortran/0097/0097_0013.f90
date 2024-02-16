integer,pointer:: p(:)
integer,pointer:: q(:)
integer,pointer:: p1(:)
integer,pointer:: q1(:)
allocate(p(3))
allocate(q(5))
p =0
q =0
allocate(p1,source=p(1:3:2))
allocate(q1,source=q(1:5:2))
call ss2(p1(:),q1(:))
if (any(p1/=[10,10])) print *,102,p1
if (any(q1/=[10,10,10])) print *,103,q1
print *,'pass'
contains
subroutine ss2(x,y)
integer,contiguous::x(:)
integer,contiguous::y(:)
x =x+10
y =y+10
end subroutine
end

