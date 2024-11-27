module m1
integer ::a01=1
integer ::a02(2)=2
integer,parameter ::a03=3
integer,parameter ::a04(2)=4
end
use m1
integer ::b01=1
integer ::b02(2)=2
integer,parameter ::b03=3
integer,parameter ::b04(2)=4
integer ::c01
integer ::c02(2)
c01=a01;if (c01/=1)print *,'error-1'
c01=a03;if (c01/=3)print *,'error-2'
c01=b01;if (c01/=1)print *,'error-3'
c01=b03;if (c01/=3)print *,'error-4'
c02=a02;if (any(c02/=2))print *,'error-5'
c02=a04;if (any(c02/=4))print *,'error-6'
c02=b02;if (any(c02/=2))print *,'error-7'
c02=b04;if (any(c02/=4))print *,'error-8'
print *,'pass'
end
