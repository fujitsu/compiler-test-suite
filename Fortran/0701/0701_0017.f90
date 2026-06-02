 call s1
 print *,'pass'
 end
 subroutine s1
  integer,dimension(1),parameter::x1=1,x2=2
  character*2  a1(2)
  integer  *8  a2(2)
  complex  *32 a3(2)
  real     *16 a4(2)
  a1=(/'12','34'/)
  a2=(/ 12 , 34 /)
  a3=(/(1,2),(3,4)/)
  a4=(/1,2/)
  call ss1(loc(a1),2,2)
  if (any(a1/=(/'56','78'/)))print *,'fail'
  call ss2(loc(a2),2)
  if (any(a2/=(/ 56,78 /))) print *,'fail'
  call ss3(loc(a3),2)
  if (any(a3/=(/ (5,6),(7,8) /))) print *,'fail'
  call ss4(loc(a4),2)
  if (any(a4/=(/ 3,4 /))) print *,'fail'
 contains
 subroutine ss1(i,k,n)
 character*(n) a
 pointer (i,a)
 dimension a(*)
 if (len(a)/=2)print *,'fail'
 if (a(1)/='12')print *,'fail'
 if (a(2)/='34')print *,'fail'
 if (any(a(:k)/=(/'12','34'/)))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a    )/=x1))print *,'fail'
 if (any(ubound(a(:k))/=x2))print *,'fail'
 if (any(size  (a(:k))/=x2))print *,'fail'
 call sss1(a)
 call sss1(a(:k))
 a(:k)=(/'56','78'/)
 end subroutine 
 subroutine ss2(i,k)
 integer*8     a
 pointer (i,a)
 dimension a(*)
 if (a(1)/=12)print *,'fail'
 if (a(2)/=34)print *,'fail'
 if (any(a(:k)/=(/12,34/)))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a    )/=x1))print *,'fail'
 if (any(ubound(a(:k))/=x2))print *,'fail'
 if (any(size  (a(:k))/=x2))print *,'fail'
 call sss2(a)
 call sss2(a(:k))
 a(:k)=(/56,78/)
 end subroutine
 subroutine ss3(i,k)
 complex  *32  a
 dimension a(*)
 pointer (i,a)
 if (a(1)/=(1,2))print *,'fail'
 if (a(2)/=(3,4))print *,'fail'
 if (any(a(:k)/=(/(1,2),(3,4)/)))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a    )/=x1))print *,'fail'
 if (any(ubound(a(:k))/=x2))print *,'fail'
 if (any(size  (a(:k))/=x2))print *,'fail'
 call sss3(a)
 call sss3(a(:k))
 a(:k)=(/(5,6),(7,8)/)
 end subroutine
 subroutine ss4(i,k)
 real     *16  a
 dimension a(*)
 pointer (i,a)
 if (a(1)/=1)print *,'fail'
 if (a(2)/=2)print *,'fail'
 if (any(a(:k)/=(/1,2/)))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a    )/=x1))print *,'fail'
 if (any(ubound(a(:k))/=x2))print *,'fail'
 if (any(size  (a(:k))/=x2))print *,'fail'
 call sss4(a)
 call sss4(a(:k))
 a(:k)=(/3,4/)
 end subroutine
 subroutine sss1(a)
 character*(*) a
 dimension a(*)
 k=2
 if (len(a)/=2)print *,'fail'
 if (a(1)/='12')print *,'fail'
 if (a(2)/='34')print *,'fail'
 if (any(a(:k)/=(/'12','34'/)))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a    )/=x1))print *,'fail'
 if (any(ubound(a(:k))/=x2))print *,'fail'
 if (any(size  (a(:k))/=x2))print *,'fail'
 end subroutine 
 subroutine sss2(a)
 integer*8     a
 dimension a(*)
 k=2
 if (a(1)/=12)print *,'fail'
 if (a(2)/=34)print *,'fail'
 if (any(a(:k)/=(/12,34/)))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a    )/=x1))print *,'fail'
 if (any(ubound(a(:k))/=x2))print *,'fail'
 if (any(size  (a(:k))/=x2))print *,'fail'
 end subroutine
 subroutine sss3(a)
 complex  *32  a
 dimension a(*)
 k=2
 if (a(1)/=(1,2))print *,'fail'
 if (a(2)/=(3,4))print *,'fail'
 if (any(a(:k)/=(/(1,2),(3,4)/)))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a    )/=x1))print *,'fail'
 if (any(ubound(a(:k))/=x2))print *,'fail'
 if (any(size  (a(:k))/=x2))print *,'fail'
 end subroutine
 subroutine sss4(a)
 real     *16  a
 dimension a(*)
 k=2
 if (a(1)/=1)print *,'fail'
 if (a(2)/=2)print *,'fail'
 if (any(a(:k)/=(/1,2/)))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a(:k))/=x1))print *,'fail'
 if (any(lbound(a    )/=x1))print *,'fail'
 if (any(ubound(a(:k))/=x2))print *,'fail'
 if (any(size  (a(:k))/=x2))print *,'fail'
 end subroutine
 end 
