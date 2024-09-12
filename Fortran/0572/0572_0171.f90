integer,parameter::x(2,3) =20
call sub(x)
contains
subroutine sub(x)
integer,INTENT(in)::x(2,*)
integer::y = Rank(x)
if(y.ne.2)print*,"101"
print*,"pass"
end subroutine
end
