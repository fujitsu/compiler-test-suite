type uu
real,pointer,dimension(:,:,:,:)::POP
end type
type (uu) ::u2(3,2)
real,allocatable,dimension(:,:)::P1,P2,P3,P4,P5,P6,P7,P8,P9,PA,PB,PC,PD,PE,PF,PG,PH
integer,allocatable,dimension(:)::VN2,VN3
allocate(u2(3,2)%POP(1,3,2,4:4))
allocate(P1(2,3),P2(2,3),P3(2,3),P4(2,3),P5(2,3),P6(2,3),P7(2,3),P8(2,3),P9(2,3),PA(2,3),PB(2,3),PC(2,3),PD(2,3),PE(2,3),PF(2,3),PG(2,3),PH(2,3))
allocate(VN2(2),VN3(3));VN2=(/1,2/);VN3=(/1,2,3/)
u2(3,2)%POP(:,:,:,4)=reshape((/(i,i=1,6)/),(/1,3,2/))
N2=2;N3=3;N1=1;N4=4
P1(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,:,:,N4) ))
P2(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,1:N3,1:N2,N4) ))
P3(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,N3-N2:N3,1:N3+N2-N3,N4) ))
P4(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,VN3,1:N3+N2-N3,N4) ))
P5(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,N3-N2:N3,VN2,N4) ))
P6(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,VN3,VN2,N4) ))
P7(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2),N4) ))
P8(1:N2,1:N3) = TRANSPOSE( xcos( real(reshape((/(i+0.,i=1,6)/),(/3,2/)))))
P9(1:N2,1:N3) = TRANSPOSE( xcos( reshape((/1.,2.,3.,4.,5.,6./),(/3,2/))))
PA(1:N2,1:N3) = TRANSPOSE( xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)/),(/3,2/))))
PB(1:N2,1:N3) = TRANSPOSE( xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)+u2(3,2)%POP(1,VN3,VN2,4)-u2(3,2)%POP(1,:,:,4)/),(/3,2/))))
PC(1:N2,1:N3) = TRANSPOSE( xcos( real(reshape((/(i+0,i=1,6)/),(/N3,N2/)))))
PD(1:N2,1:N3) = TRANSPOSE( xcos( reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/))))
PE(1:N2,1:N3) = TRANSPOSE( xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)/),(/N3,N2/))))
PF(1:N2,1:N3) = TRANSPOSE( xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)+u2(3,2)%POP(1,VN3,VN2,4)-u2(3,2)%POP(1,:,:,4)/),(/N3,N2/))))
PG(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,1:3,1:2,N4) ))
PH(1:N2,1:N3) = TRANSPOSE( xcos( u2(N3,N2)%POP(N1,1:3:N3-N2,1:N2:N3-N2,N4) ))
CALL t(TRANSPOSE( xcos( u2(N3,N2)%POP(N1,:,:,N4) )))
CALL t(TRANSPOSE( xcos( u2(N3,N2)%POP(N1,1:N3,1:N2,N4) )))
CALL t(TRANSPOSE( xcos( u2(N3,N2)%POP(N1,N3-N2:N3,1:N3+N2-N3,N4) )))
CALL t(TRANSPOSE( xcos( u2(N3,N2)%POP(N1,VN3,1:N3+N2-N3,N4) )))
CALL t(TRANSPOSE( xcos( u2(N3,N2)%POP(N1,N3-N2:N3,VN2,N4) )))
CALL t(TRANSPOSE( xcos( u2(N3,N2)%POP(N1,VN3,VN2,N4) )))
CALL t(TRANSPOSE( xcos( u2(N3,N2)%POP(N1,VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2),N4) )))
call t(TRANSPOSE( xcos( real(reshape((/(i+0,i=1,6)/),(/3,2/))))))
call t(TRANSPOSE( xcos( reshape((/1.,2.,3.,4.,5.,6./),(/3,2/)))))
call t( TRANSPOSE( xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)/),(/3,2/)))))
call t(TRANSPOSE( xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)+u2(3,2)%POP(1,VN3,VN2,N4)-u2(3,2)%POP(1,:,:,4)/),(/3,2/)))))
call t( TRANSPOSE( xcos( real(reshape((/(i+0,i=1,6)/),(/N3,N2/))))))
call t( TRANSPOSE( xcos( reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/)))))
call t( TRANSPOSE( xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)/),(/N3,N2/)))))
call t( TRANSPOSE( xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)+u2(3,2)%POP(1,VN3,VN2,4)-u2(3,2)%POP(1,:,:,4)/),(/N3,N2/)))))
call t( TRANSPOSE( xcos( u2(N3,N2)%POP(N1,1:3,1:2,N4) )))
call t( TRANSPOSE( xcos( u2(N3,N2)%POP(N1,1:3:N3-N2,1:N2:N3-N2,4) )))
if (any(abs(P1-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P2-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P3-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P4-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P5-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P6-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P7-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P8-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P9-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PA-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PB-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PC-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PD-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PE-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PF-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PG-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PH-xcos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
print *,'pass'
contains
subroutine s(x)
real,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-reshape((/1,4,2,5,3,6/),(/2,3/)))>0.001))write(6,*) "NG"
end subroutine
subroutine t(x)
real,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
end subroutine
function xcos(x)
real,dimension(:,:)::x
real,dimension(size(x,dim=1),size(x,dim=2))::xcos
xcos=cos(x)
end function
end
