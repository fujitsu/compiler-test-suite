module m
contains
function f(c,i) result(r)
character(i),dimension(3)::c
integer,dimension(size(c))::r
r=(/1,2,3/)
end function
function g(c,i) result(r)
character(i),dimension(3)::c
character(i),dimension(size(c))::r
r=(/'1','2','3'/)
end function
end
use m
character(1),dimension(3)::c
if (any(f(c,1)/=(/1,2,3/)))write(6,*) "NG"
if (any(g(c,1)/=(/'1','2','3'/)))write(6,*) "NG"
print *,'pass'
end
