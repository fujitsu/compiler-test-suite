type uu
complex,dimension(1,3,2,4:4)::POP
end type
type (uu) ::u2(3,2)
complex,dimension(2,3)::P1,P2,P3,P4,P5,P6,P7,P8,P9,PA,PB,PC,PD,PE,PF,PG,PH
integer::VN2(2),VN3(3)
VN2=(/1,2/);VN3=(/1,2,3/)
u2(3,2)%POP(:,:,:,4)=reshape((/(cmplx(i,i),i=1,6)/),(/1,3,2/))
N2=2;N3=3;N1=1;N4=4
P1(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,:,:,N4) )
P2(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,1:N3,1:N2,N4) )
P3(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,N3-N2:N3,1:N3+N2-N3,N4) )
P4(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,VN3,1:N3+N2-N3,N4) )
P5(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,N3-N2:N3,VN2,N4) )
P6(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,VN3,VN2,N4) )
P7(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2),N4) )
P8(1:N2,1:N3) = TRANSPOSE( cmplx(reshape((/(cmplx(i,i),i=1,6)/),(/3,2/))))
P9(1:N2,1:N3) = TRANSPOSE( reshape((/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),(6.,6.)/),(/3,2/)))
PA(1:N2,1:N3) = TRANSPOSE( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)/),(/3,2/)))
PB(1:N2,1:N3) = TRANSPOSE( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)+u2(3,2)%POP(1,VN3,VN2,4)-u2(3,2)%POP(1,:,:,4)/),(/3,2/)))
PC(1:N2,1:N3) = TRANSPOSE( cmplx(reshape((/(cmplx(i,i),i=1,6)/),(/N3,N2/))))
PD(1:N2,1:N3) = TRANSPOSE( reshape((/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),(6.,6.)/),(/N3,N2/)))
PE(1:N2,1:N3) = TRANSPOSE( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)/),(/N3,N2/)))
PF(1:N2,1:N3) = TRANSPOSE( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)+u2(3,2)%POP(1,VN3,VN2,4)-u2(3,2)%POP(1,:,:,4)/),(/N3,N2/)))
PG(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,1:3,1:2,N4) )
PH(1:N2,1:N3) = TRANSPOSE( u2(N3,N2)%POP(N1,1:3:N3-N2,1:N2:N3-N2,N4) )
CALL s(TRANSPOSE( u2(N3,N2)%POP(N1,:,:,N4) ))
CALL s(TRANSPOSE( u2(N3,N2)%POP(N1,1:N3,1:N2,N4) ))
CALL s(TRANSPOSE( u2(N3,N2)%POP(N1,N3-N2:N3,1:N3+N2-N3,N4) ))
CALL s(TRANSPOSE( u2(N3,N2)%POP(N1,VN3,1:N3+N2-N3,N4) ))
CALL s(TRANSPOSE( u2(N3,N2)%POP(N1,N3-N2:N3,VN2,N4) ))
CALL s(TRANSPOSE( u2(N3,N2)%POP(N1,VN3,VN2,N4) ))
CALL s(TRANSPOSE( u2(N3,N2)%POP(N1,VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2),N4) ))
call s(TRANSPOSE( cmplx(reshape((/(cmplx(i,i),i=1,6)/),(/3,2/)))))
call s(TRANSPOSE( reshape((/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),(6.,6.)/),(/3,2/))))
call s( TRANSPOSE( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)/),(/3,2/))))
call s(TRANSPOSE( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)+u2(3,2)%POP(1,VN3,VN2,N4)-u2(3,2)%POP(1,:,:,4)/),(/3,2/))))
call s( TRANSPOSE( cmplx(reshape((/(cmplx(i,i),i=1,6)/),(/N3,N2/)))))
call s( TRANSPOSE( reshape((/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),(6.,6.)/),(/N3,N2/))))
call s( TRANSPOSE( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)/),(/N3,N2/))))
call s( TRANSPOSE( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)+u2(3,2)%POP(1,VN3,VN2,4)-u2(3,2)%POP(1,:,:,4)/),(/N3,N2/))))
call s( TRANSPOSE( u2(N3,N2)%POP(N1,1:3,1:2,N4) ))
call s( TRANSPOSE( u2(N3,N2)%POP(N1,1:3:N3-N2,1:N2:N3-N2,4) ))
if (any(abs(P1-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(P2-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(P3-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(P4-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(P5-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(P6-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(P7-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(P8-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(P9-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(PA-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(PB-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(PC-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(PD-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(PE-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(PF-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(PG-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
if (any(abs(PH-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
print *,'pass'
contains
subroutine s(x)
complex,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/)))>0.001))write(6,*) "NG"
end subroutine
subroutine t(x)
complex,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-cos(0.+reshape((/(1.,1.),(4.,4.),(2.,2.),(5.,5.),(3.,3.),(6.,6.)/),(/2,3/))))>0.001))write(6,*) "NG"
end subroutine
end
