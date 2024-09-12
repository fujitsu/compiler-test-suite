INTEGER::A(10)= (/1, 0, (I, I = -1, -6, -1), -7, -8 /)
integer::p = rank(A=A)
integer::q = rank(a = (/1, 0, (I, I = -1, -6, -1), -7, -8 /))
if(p.ne.1)print*,"101"
if(q.ne.1)print*,"101"
call sub([1,2,3,4,5])
contains
subroutine sub(x)
integer::x(5)
integer::y = Rank(x)
if(y.ne.1)print*,"101"
print*,"pass"
end subroutine
end
