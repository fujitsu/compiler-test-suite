real(4),parameter::c1=alog(-0.0)
real(4),parameter::c2=alog(+0.0)
real(4),parameter::c3=alog(0.0)
real(4),parameter::c4=alog((0.0))
real(4),parameter::c5=alog(+(0.0))
real(4),parameter::c6=alog(-(-0.0))
print *,c1,c2,c3,c4,c5,c6
print *,alog(0.0)
end
