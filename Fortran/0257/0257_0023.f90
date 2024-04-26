integer::x(3,3,3,3) = 10
integer::k =1

call sub(x(1:3:k,1:3:k,1:3:k,1:3:k))
print*,"pass"
contains
subroutine sub(a)
integer::a(3,3,3,3)
if(loc(x).ne.loc(a))print*,"101"
a =a +10
end subroutine
end
