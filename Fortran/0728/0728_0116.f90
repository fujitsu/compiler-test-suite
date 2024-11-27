 call s1
 print *,'pass'
 end
 module m1
  contains
  subroutine ss1(p1,p2,p3,p4,p11,p12,p13,p14)
  entry      ss2(p2,p3,p4,p11,p12,p13,p14,p1)
  entry      ss3(p3,p4,p11,p12,p13,p14,p1,p2)
  entry      ss4(p4,p11,p12,p13,p14,p1,p2,p3)
  entry      ss5(p11,p12,p13,p14,p1,p2,p3,p4)
  entry      ss6(p12,p13,p14,p1,p2,p3,p4,p11)
  entry      ss7(p13,p14,p1,p2,p3,p4,p11,p12)
  entry      ss8(p14,p1,p2,p3,p4,p11,p12,p13)
  integer,pointer::p1,p2,p3,p4,p11,p12,p13,p14
  allocate(p11,p12,p13,p14)
  p11=11;p12=12;p13=13;p14=14
  p1=>p11
  p2=>p12
  p3=>p13
  p4=>p14
  end subroutine
end
 subroutine s1
   use m1
  integer,pointer::p1,p2,p3,p4,p11,p12,p13,p14
  call ss(p1,p2,p3,p4,p11,p12,p13,p14)
  contains
  subroutine ss(p1,p2,p3,p4,p11,p12,p13,p14)
  integer,pointer::p1,p2,p3,p4,p11,p12,p13,p14
  call      ss1(p1,p2,p3,p4,p11,p12,p13,p14)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  call      ss2(p2,p3,p4,p11,p12,p13,p14,p1)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  call      ss3(p3,p4,p11,p12,p13,p14,p1,p2)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  call      ss4(p4,p11,p12,p13,p14,p1,p2,p3)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  call      ss5(p11,p12,p13,p14,p1,p2,p3,p4)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  call      ss6(p12,p13,p14,p1,p2,p3,p4,p11)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  call      ss7(p13,p14,p1,p2,p3,p4,p11,p12)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  call      ss8(p14,p1,p2,p3,p4,p11,p12,p13)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  end subroutine
end 
subroutine chk(p1,p2,p3,p4,p11,p12,p13,p14)
 integer::p1,p2,p3,p4,p11,p12,p13,p14
 if (p1/=11)write(6,*) "NG"
 if (p2/=12)write(6,*) "NG"
 if (p3/=13)write(6,*) "NG"
 if (p4/=14)write(6,*) "NG"
 if (p11/=11)write(6,*) "NG"
 if (p12/=12)write(6,*) "NG"
 if (p13/=13)write(6,*) "NG"
 if (p14/=14)write(6,*) "NG"
 p1=0;p2=0;p3=0;p4=0
 p11=0;p12=0;p13=0;p14=0
end
