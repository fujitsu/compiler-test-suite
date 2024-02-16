integer*8,parameter::x(7) =[9223372036854775807_8,2147483647_8,21474836423447_8,9223372036854775807_8,0_8, -9223372036854775805_8  ,9223372036854775805_8]
type ty
logical::l
end type
type(ty),parameter::obj = ty(.true.)
integer,parameter::k = kind(maxloc(x,dim =1,mask=.true.,kind=8,back= obj%l))
integer,parameter::k2(1) = maxloc(x,dim =1,mask=.true.,kind=8,back= .true.)
integer,parameter::k3(1) =  maxloc(x,mask=.true.,kind=8,back= .false.)
if((k .eq. 8) .and. (k2(1).eq.4) .and. (k3(1).eq.1))then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

