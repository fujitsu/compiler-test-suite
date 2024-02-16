integer,target:: c(3)=[1,2,3]
integer,target:: d(5)=[1,2,3,4,5]
integer,pointer:: p(:)
integer,pointer:: q(:)
p=> c(::2)
q=> d(::2)
call ss2(p(:),q(:))
if (any(c/=[11,2,13])) print *,102,c
if (any(d/=[11,2,13,4,15])) print *,103,c
print *,'pass'
contains
subroutine ss2(x,y)
integer,contiguous::x(:)
integer,contiguous::y(:)
x =x+10
y =y+10
end subroutine
end

