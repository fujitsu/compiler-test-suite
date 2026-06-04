integer::r(3,4)
call sub1(r)
print*,"PASS"
contains

subroutine sub1(d1)
integer::d1(..)
call sub(d1)
end subroutine

subroutine sub(i)
integer::i(..)
integer::e2(1:ubound(i,2))
integer::g2(1:size(i,1))
integer::h2(1:lbound(i,1))
integer::k2(1:rank(i))

if(any(shape(e2)/=4))print*,101
if(any(ubound(e2)/=4))print*,102
if(any(shape(g2)/=3))print*,103
if(any(shape(g2)/=3))print*,104
if(any(shape(h2)/=1))print*,105
if(any(ubound(h2)/=1))print*,106
if(any(ubound(k2)/=2))print*,107
if(any(ubound(k2)/=2))print*,108


end subroutine

end

