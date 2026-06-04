subroutine s1
parameter(i01=sizeof(x='123'(2:3)))
character*3,parameter::c='123'
character*3,parameter::d(2)='123'
parameter(i02=sizeof(x=c(2:3)))
parameter(i03=sizeof(x=d(2)(2:3)))
if (i01/=2)print *,"fail"
if (i02/=2)print *,"fail"
if (i03/=2)print *,"fail"
end
subroutine s2
character*3,parameter::c='123'
character*3,parameter::d(2)='123'
i01=sizeof(x='123'(2:3))
i02=sizeof(x=c(2:3))
i03=sizeof(x=d(2)(2:3))
if (i01/=2)print *,"fail"
if (i02/=2)print *,"fail"
if (i03/=2)print *,"fail"
end
call s1
call s2
print *,'pass'
end
