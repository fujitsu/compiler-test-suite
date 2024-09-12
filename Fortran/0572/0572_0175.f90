integer,parameter::x(2,3,5) =20
integer::y =rank(size(x))
integer::z =rank(shape(x))
if(y.ne.0)print*,"101",y
if(z.ne.1)print*,"101",y
print*,"pass"
end
