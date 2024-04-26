subroutine s1
integer,parameter::a1(6)=[1,2,3,4,5,6]
integer,parameter::a2(2,3)=reshape([1,2,3,4,5,6],[2,3])
integer,parameter::a3(2,1,3)=reshape([1,2,3,4,5,6],[2,1,3])
integer,parameter::t1=sum(a1)
integer,parameter::t2=sum(a2)
integer,parameter::t3=sum(a3)
if (t1/=21) print *,101
if (t2/=21) print *,102
if (t3/=21) print *,103
end
subroutine s2
real(8),parameter::a1(6)=[1,2,3,4,5,6]
real(8),parameter::a2(2,3)=reshape([1,2,3,4,5,6],[2,3])
real(8),parameter::a3(2,1,3)=reshape([1,2,3,4,5,6],[2,1,3])
real(8),parameter::t1=sum(a1)
real(8),parameter::t2=sum(a2)
real(8),parameter::t3=sum(a3)
if (t1/=21) print *,201
if (t2/=21) print *,202
if (t3/=21) print *,203
end
subroutine s3
real(16),parameter::a1(6)=[1,2,3,4,5,6]
real(16),parameter::a2(2,3)=reshape([1,2,3,4,5,6],[2,3])
real(16),parameter::a3(2,1,3)=reshape([1,2,3,4,5,6],[2,1,3])
real(16),parameter::t1=sum(a1)
real(16),parameter::t2=sum(a2)
real(16),parameter::t3=sum(a3)
if (t1/=21) print *,301
if (t2/=21) print *,302
if (t3/=21) print *,303
end
call s1
call s2
call s3
print *,'pass'
end

