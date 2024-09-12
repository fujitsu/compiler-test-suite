integer,parameter::x(2,3) =20
integer::y = Rank(maxloc(x)+minloc(x))
if(y.ne.1)print*,"101"
print*,"pass"
end
