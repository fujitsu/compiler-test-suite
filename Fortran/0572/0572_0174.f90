real*8,parameter::x(2,3) =20.0
integer::y = rank(kind(x))
integer::z = kind(rank(x))
if(y.ne.0)print*,"101"
if(z.ne.4)print*,"102"
print*,"pass"
end
