subroutine s1
character(*,4),parameter::c(2,1)*1=reshape([4_"1",4_"2"], [2,1])
character::d(2,1)
d=c
if (d(1,1)/='1')print *,101
if (d(2,1)/='2')print *,102,c(2,1)

d=      reshape([4_"1",4_"2"],[2,1])
if (d(1,1)/='1')print *,201
if (d(2,1)/='2')print *,202
end
subroutine s2
character(*,4),parameter::c(2)*1=reshape([4_"1",4_"2"], [2])
character::d(2)
d=c
if (d(1)/='1')print *,301
if (d(2)/='2')print *,302,c(2)

d=      reshape([4_"1",4_"2"],[2])
if (d(1)/='1')print *,401
if (d(2)/='2')print *,402
end
subroutine s3
character(*,4),parameter::c(2)*1=[4_"1",4_"2"]
character::d(2)
d=c
if (d(1)/='1')print *,501
if (d(2)/='2')print *,502,c(2)

d=      [4_"1",4_"2"]
if (d(1)/='1')print *,601
if (d(2)/='2')print *,602
end
call s1
call s2
call s3
print *,'pass'
end
