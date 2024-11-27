integer ,parameter :: i1=int(4294967295)
integer(kind=4) ,parameter :: i2=int(4294967295, int(4,4))
integer ,parameter :: i3=INT(a=4294967295, kind=4)
integer(kind=8) ,parameter :: i4=int(4294967295, int(4,4))
integer(kind=8) ,parameter :: i5=int(4294967295)
integer(kind=8) ,parameter :: i6=int(4294967295,8)

 print *,i1
 print *,i2
 print *,i3
 print *,i4
 print *,i5
 print *,i6

 print *,'pass'

end
