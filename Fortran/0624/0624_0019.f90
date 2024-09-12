subroutine s2
complex(4),parameter::xx1=(-3.0,-0.0)
complex(4),parameter::zz1=log(xx1)
complex(4)::x1,z1
x1=xx1
z1=log(x1)
if (abs(z1-zz1)>0.0000001_4)print *,401,z1-zz1,z1,zz1
end

call s2
print *,'pass'
end
