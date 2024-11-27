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
  integer,dimension(:,:,:,:,:,:,:),optional,pointer::p1,p2,p3,p4,p11,p12,p13,p14
  if (present(p1)) then 
    if (associated(p1))write(6,*) "NG"
  endif
  if (present(p2)) then 
    if (associated(p2))write(6,*) "NG"
  endif
  if (present(p3)) then 
    if (associated(p3))write(6,*) "NG"
  endif
  if (present(p4)) then 
    if (associated(p4))write(6,*) "NG"
  endif
  if (present(p11))  p11=11
  if (present(p12))  p12=12
  if (present(p13))  p13=13
  if (present(p14))  p14=14
  if (present(p1))  p1=>p11
  if (present(p2))  p2=>p12
  if (present(p3))  p3=>p13
  if (present(p4))  p4=>p14
  end subroutine
end
 subroutine s1
   use m1
  integer,dimension(:,:,:,:,:,:,:),pointer::p1,p2,p3,p4,p11,p12,p13,p14
  call ss(p1,p2,p3,p4,p11,p12,p13,p14)
  contains
  subroutine ss(p1,p2,p3,p4,p11,p12,p13,p14)
  integer,dimension(:,:,:,:,:,:,:),optional,pointer::p1,p2,p3,p4,p11,p12,p13,p14
  allocate(p11(2,2,2,2,2,2,2),p12(2,2,2,2,2,2,2),p13(2,2,2,2,2,2,2),p14(2,2,2,2,2,2,2))
  nullify(p1,p2,p3,p4)
  call      ss1(p1,p2,p3,p4,p11,p12,p13,p14)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  nullify(p1,p2,p3,p4)
  call      ss2(p2,p3,p4,p11,p12,p13,p14,p1)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  nullify(p1,p2,p3,p4)
  call      ss3(p3,p4,p11,p12,p13,p14,p1,p2)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  nullify(p1,p2,p3,p4)
  call      ss4(p4,p11,p12,p13,p14,p1,p2,p3)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  nullify(p1,p2,p3,p4)
  call      ss5(p11,p12,p13,p14,p1,p2,p3,p4)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  nullify(p1,p2,p3,p4)
  call      ss6(p12,p13,p14,p1,p2,p3,p4,p11)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  nullify(p1,p2,p3,p4)
  call      ss7(p13,p14,p1,p2,p3,p4,p11,p12)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  nullify(p1,p2,p3,p4)
  call      ss8(p14,p1,p2,p3,p4,p11,p12,p13)
  call      chk(p1,p2,p3,p4,p11,p12,p13,p14)
  call      ss1()
  call      ss2()
  call      ss3()
  call      ss4()
  call      ss5()
  call      ss6()
  call      ss7()
  call      ss8()
  end subroutine
end 
subroutine chk(p1,p2,p3,p4,p11,p12,p13,p14)
 integer,dimension(2,2,2,2,2,2,2)::p1,p2,p3,p4,p11,p12,p13,p14
 if (any(p1/=11))write(6,*) "NG"
 if (any(p2/=12))write(6,*) "NG"
 if (any(p3/=13))write(6,*) "NG"
 if (any(p4/=14))write(6,*) "NG"
 if (any(p11/=11))write(6,*) "NG"
 if (any(p12/=12))write(6,*) "NG"
 if (any(p13/=13))write(6,*) "NG"
 if (any(p14/=14))write(6,*) "NG"
 p1=0;p2=0;p3=0;p4=0
 p11=0;p12=0;p13=0;p14=0
end
