integer ,parameter :: i1=int(z"ffffffff")
integer(kind=4) ,parameter :: i2=int(z"fffffff", int(4,4))
integer ,parameter :: i3=INT(a=Z'FFFFFFF', kind=4)
integer(kind=8) ,parameter :: i4=int(z"fffffff", int(4,4))
integer(kind=8) ,parameter :: i5=int(z"ffffffff")
integer(kind=8) ,parameter :: i6=int(z"ffffffff",8)

if (i1.ne.i5) print *,'fail'
if (i2.ne.i3) print *,'fail'
if (i3.ne.i4) print *,'fail'
if (i5.eq.i6) print *,'fail'

 print *,'pass'

end
