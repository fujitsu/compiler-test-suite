call s1
call s2
print *,'pass'
end
subroutine s1
parameter(k=2)
real(k),parameter::zz(4) = (/1,2,3,4/)
complex(k):: x(3,2),result(3,2)
complex(k)::z(4) = cmplx(zz,zz)
complex(k)::w(1) = (-1,-1)
x = reshape( z         ,(/3,2/),pad=w    ) 
result(1,1)=z(1)
result(2,1)=z(2)
result(3,1)=z(3)
result(1,2)=z(4)
result(2,2)=w(1)
result(3,2)=w(1)
if(any(x/=result)) print *,'err'
end
subroutine s2
parameter(k=8)
real(k),parameter::zz(4) = (/1,2,3,4/)
complex(k):: x(3,2),result(3,2)
complex(k)::z(4) = cmplx(zz,zz)
complex(k)::w(1) = (-1,-1)
x = reshape( z         ,(/3,2/),pad=w    ) 
result(1,1)=z(1)
result(2,1)=z(2)
result(3,1)=z(3)
result(1,2)=z(4)
result(2,2)=w(1)
result(3,2)=w(1)
if(any(x/=result)) print *,'err'
end
