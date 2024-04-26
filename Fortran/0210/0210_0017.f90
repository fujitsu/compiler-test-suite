call s1
call s2
print *,'pass'
end
subroutine s1
parameter(k=2)
real(k):: x(3,2),result(3,2)
real(k),parameter::z(4) = (/1,2,3,4/)
real(k),parameter::w(3) = [-1,-2,-3]
integer,parameter::q(2) = [2,1]
parameter(x = reshape( z         ,(/3,2/),pad=w,order=q    ) )
result(1,1)=1
result(2,1)=3
result(3,1)=-1
result(1,2)=2 
result(2,2)=4
result(3,2)=-2
if(any(x/=result)) print *,'err'
end
subroutine s2
parameter(k=8)
real(k):: x(3,2),result(3,2)
real(k),parameter::z(4) = (/1,2,3,4/)
real(k),parameter::w(3) = [-1,-2,-3]
integer,parameter::q(2) = [2,1]
parameter(x = reshape( z         ,(/3,2/),pad=w,order=q    ) )
result(1,1)=1
result(2,1)=3
result(3,1)=-1
result(1,2)=2 
result(2,2)=4
result(3,2)=-2
if(any(x/=result)) print *,'err'
end
