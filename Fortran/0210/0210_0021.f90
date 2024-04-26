call s1
call s2
print *,'pass'
end
subroutine s1
parameter(k=2)
real(k),parameter::zz(6) = (/1,2,3,4,5,6/)
complex(k):: x(3,2),result(3,2)
complex(k),parameter::z(6) = cmplx(zz,zz)
integer,parameter::q(2) = [2,1]
parameter(x = reshape( z         ,(/3,2/),order=q    ) )
result(1,1)=z(1)
result(2,1)=z(3)
result(3,1)=z(5)
result(1,2)=z(2)
result(2,2)=z(4)
result(3,2)=z(6)
if(any(x/=result)) print *,'err'
end
subroutine s2
parameter(k=8)
real(k),parameter::zz(6) = (/1,2,3,4,5,6/)
complex(k):: x(3,2),result(3,2)
complex(k),parameter::z(6) = cmplx(zz,zz)
integer,parameter::q(2) = [2,1]
parameter(x = reshape( z         ,(/3,2/),order=q    ) )
result(1,1)=z(1)
result(2,1)=z(3)
result(3,1)=z(5)
result(1,2)=z(2)
result(2,2)=z(4)
result(3,2)=z(6)
if(any(x/=result)) print *,'err'
end
