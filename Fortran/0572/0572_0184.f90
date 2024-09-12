integer,parameter::x(2,3) =20
integer,parameter::y(rank(x),rank(x)) =20
if(any(shape(y).ne.2))print*,"104"
call sub(x,y(1:rank(y),1:rank(x)))
contains
subroutine sub(x,y)
integer,INTENT(in)::x(2,*)
integer,INTENT(in)::y(rank(x),2)
integer::z = Rank(x)
integer::z2 = Rank(y)
if(z.ne.2)print*,"101"
if(z2.ne.2)print*,"101"
print*,"pass"
end subroutine
end
