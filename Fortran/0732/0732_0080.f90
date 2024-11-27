type uu
real,dimension(1,3,1,2,4:4)::POP
end type
type (uu) ::u2(3,2)
real,dimension(2,3)::P1,P2,P3,P4,P5,P6,P7,P8,P9,PA,PB,PC,PD,PE,PF,PG,PH
integer,dimension(2)::VN2,VN3(3)
VN2=(/1,2/);VN3=(/1,2,3/)
u2(3,2)%POP(1,:,:,:,4)=reshape((/(i,i=1,6)/),(/3,1,2/))
N2=2;N3=3;N1=1;N4=4
P1(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,:,N1,:,N4) ))
P2(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,1:N3,N1,1:N2,N4) ))
P3(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,N3-N2:N3,N1,1:N3+N2-N3,N4) ))
P4(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,VN3,N1,1:N3+N2-N3,N4) ))
P5(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,N3-N2:N3,N1,VN2,N4) ))
P6(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,VN3,N1,VN2,N4) ))
P7(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,VN3(N3-N2:N3:N3-N2),N1,VN2(N3-N2:N3-(N3-N2):N3-N2),N4) ))
P8(1:N2,1:N3) = TRANSPOSE(cos( real(reshape((/(i,i=1,6)/),(/3,2/)))))
P9(1:N2,1:N3) = TRANSPOSE(cos( reshape((/1.,2.,3.,4.,5.,6./),(/3,2/))))
PA(1:N2,1:N3) = TRANSPOSE(cos( reshape((/u2(N3,N2)%POP(N1,1:N3,N1,1:N2,4)/),(/3,2/))))
PB(1:N2,1:N3) = TRANSPOSE(cos( reshape((/u2(N3,N2)%POP(N1,1:N3,N1,1:N2,4)+u2(3,2)%POP(1,VN3,N1,VN2,4)-u2(3,2)%POP(1,:,N1,:,4)/),(/3,2/))))
PC(1:N2,1:N3) = TRANSPOSE(cos( real(reshape((/(i,i=1,6)/),(/N3,N2/)))))
PD(1:N2,1:N3) = TRANSPOSE(cos( reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/))))
PE(1:N2,1:N3) = TRANSPOSE(cos( reshape((/u2(N3,N2)%POP(N1,1:N3,N1,1:N2,4)/),(/N3,N2/))))
PF(1:N2,1:N3) = TRANSPOSE(cos( reshape((/u2(N3,N2)%POP(N1,1:N3,N1,1:N2,4)+u2(3,2)%POP(1,VN3,N1,VN2,4)-u2(3,2)%POP(1,:,N1,:,4)/),(/N3,N2/))))
PG(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,1:3,N1,1:2,N4) ))
PH(1:N2,1:N3) = TRANSPOSE(cos( u2(N3,N2)%POP(N1,1:3:N3-N2,N1,1:N2:N3-N2,N4) ))
CALL t(TRANSPOSE(cos( u2(N3,N2)%POP(N1,:,N1,:,N4) )))
CALL t(TRANSPOSE(cos( u2(N3,N2)%POP(N1,1:N3,N1,1:N2,N4) )))
CALL t(TRANSPOSE(cos( u2(N3,N2)%POP(N1,N3-N2:N3,N1,1:N3+N2-N3,N4) )))
CALL t(TRANSPOSE(cos( u2(N3,N2)%POP(N1,VN3,N1,1:N3+N2-N3,N4) )))
CALL t(TRANSPOSE(cos( u2(N3,N2)%POP(N1,N3-N2:N3,N1,VN2,N4) )))
CALL t(TRANSPOSE(cos( u2(N3,N2)%POP(N1,VN3,N1,VN2,N4) )))
CALL t(TRANSPOSE(cos( u2(N3,N2)%POP(N1,VN3(N3-N2:N3:N3-N2),N1,VN2(N3-N2:N3-(N3-N2):N3-N2),N4) )))
call t(TRANSPOSE(cos( real(reshape((/(i,i=1,6)/),(/3,2/))))))
call t(TRANSPOSE(cos( reshape((/1.,2.,3.,4.,5.,6./),(/3,2/)))))
call t( TRANSPOSE(cos( reshape((/u2(N3,N2)%POP(N1,1:N3,N1,1:N2,N4)/),(/3,2/)))))
call t(TRANSPOSE(cos( reshape((/u2(N3,N2)%POP(N1,1:N3,N1,1:N2,N4)+u2(3,2)%POP(1,VN3,N1,VN2,N4)-u2(3,2)%POP(1,:,N1,:,4)/),(/3,2/)))))
call t( TRANSPOSE(cos( real(reshape((/(i,i=1,6)/),(/N3,N2/))))))
call t( TRANSPOSE(cos( reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/)))))
call t( TRANSPOSE(cos( reshape((/u2(N3,N2)%POP(N1,1:N3,N1,1:N2,N4)/),(/N3,N2/)))))
call t( TRANSPOSE(cos( reshape((/u2(N3,N2)%POP(N1,1:N3,N1,1:N2,N4)+u2(3,2)%POP(1,VN3,N1,VN2,4)-u2(3,2)%POP(1,:,N1,:,4)/),(/N3,N2/)))))
call t( TRANSPOSE(cos( u2(N3,N2)%POP(N1,1:3,N1,1:2,N4) )))
call t( TRANSPOSE(cos( u2(N3,N2)%POP(N1,1:3:N3-N2,N1,1:N2:N3-N2,4) )))
if (any(abs(P1-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P2-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P3-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P4-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P5-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P6-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P7-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P8-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P9-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PA-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PB-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PC-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PD-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PE-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PF-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PG-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(PH-cos(reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
print *,'pass'
contains
subroutine s(x)
real,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-reshape((/1.,4.,2.,5.,3.,6./),(/2,3/)))>0.001))write(6,*) "NG"
end subroutine
subroutine t(x)
real,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-cos(0.+reshape((/1.,4.,2.,5.,3.,6./),(/2,3/))))>0.001))write(6,*) "NG"
end subroutine
end
