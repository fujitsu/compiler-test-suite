subroutine s1
parameter(k=8)
implicit complex(k)(w)
real(k),parameter::am=-0.0,ap=+0.0
complex(k),parameter::y1=(ap,ap)
complex(k),parameter::y2=(am,ap)
complex(k),parameter::y3=(ap,am)
complex(k),parameter::y4=(am,am)
complex(k),parameter::x=(1.,1.)
complex(k),parameter::z1=x/y1
complex(k),parameter::z2=x/y2
complex(k),parameter::z3=x/y3
complex(k),parameter::z4=x/y4
integer,parameter::n=6
write(n,'(z16.16)') z1
write(n,'(z16.16)') z2
write(n,'(z16.16)') z3
write(n,'(z16.16)') z4
xx=x
w1=xx/y1
w2=xx/y2
w3=xx/y3
w4=xx/y4
write(n,'(z16.16)') w1
write(n,'(z16.16)') w2
write(n,'(z16.16)') w3
write(n,'(z16.16)') w4
end
call s1
print *,'pass'
end

