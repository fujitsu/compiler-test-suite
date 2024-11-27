character*5:: ch1(3)=(/'12345','6789a','bcdef'/)
character(len=5):: ch2(3)=(/'12345','6789a','bcdef'/)

forall (i=1:3)
  ch1(i)(1:2)=ch1(i)(i:3)
end forall
do i=1,3
  ch2(i)(1:2)=ch2(i)(i:3)
end do
if (ch1(1)/='12345')write(6,*) "NG"
if (ch1(2)/='7889a')write(6,*) "NG"
if (ch1(3)/='d def')write(6,*) "NG"
if (ch2(1)/='12345')write(6,*) "NG"
if (ch2(2)/='7889a')write(6,*) "NG"
if (ch2(3)/='d def')write(6,*) "NG"
print *,'pass'
end
