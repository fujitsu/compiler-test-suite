subroutine s1(k1,k2)
write(46,*)k1,k2,sign(k1,k2)
if (k1==1 .and. k2==1) then
  if (sign(k1,k2)/=1) print *,101
else if (k1==-1 .and. k2==1) then
  if (sign(k1,k2)/=1) print *,102
else if (k1==1 .and. k2==-1) then
  if (sign(k1,k2)/=-1) print *,103
else
  if (sign(k1,k2)/=-1) print *,104
end if
end
subroutine s2
integer,parameter::k11=1,k12=1
integer,parameter::k21=-1,k22=1
integer,parameter::k31=1,k32=-1
integer,parameter::k41=-1,k42=-1
integer,parameter::n1=sign(k11,k12)
integer,parameter::n2=sign(k21,k22)
integer,parameter::n3=sign(k31,k32)
integer,parameter::n4=sign(k41,k42)
if (n1/=1) print *,201
if (n2/=1) print *,202
if (n3/=-1) print *,203
if (n4/=-1) print *,204
end
call s1(1,1)
call s1(-1,1)
call s1(1,-1)
call s1(-1,-1)
call s2
print *,'pass'
end
