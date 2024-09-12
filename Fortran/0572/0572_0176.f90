integer::p = rank([12,34,55])
if(p.ne.1)print*,"101"
call sub([1,2,3,4,5])
contains
subroutine sub(x)
integer::x(5)
integer::y = Rank(x)
if(y.ne.1)print*,"101"
print*,"pass"
end subroutine
end
