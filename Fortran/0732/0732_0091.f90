real,allocatable,dimension(:,:)::POP
real,allocatable,dimension(:,:)::P1,P2,P3,P4,P5,P6,P7,P8,P9,PA,PB,PC,PD,PE,PF,PG,PH
integer,allocatable,dimension(:)::VN2,VN3
allocate(POP(-30,-20))
allocate(P1(-20,-30),P2(-20,-30),P3(-20,-30),P4(-20,-30),P5(-20,-30),P6(-20,-30),P7(-20,-30),P8(-20,-30),P9(-20,-30),PA(-20,-30),PB(-20,-30),PC(-20,-30),PD(-20,-30),PE(-20,-30),PF(-20,-30),PG(-20,-30),PH(-20,-30))
allocate(VN2(-20),VN3(-30));VN2=1;VN3=1
POP=0
N2=-20;N3=-30
P1(:,:) = TRANSPOSE( POP(:,:) )
P2(:,:) = TRANSPOSE( POP(1:N3,1:N2) )
P3(:,:) = TRANSPOSE( POP(:N3,1:N3+N2-N3) )
P4(:,:) = TRANSPOSE( POP(VN3,1:N3+N2-N3) )
P5(:,:) = TRANSPOSE( POP(:N3,VN2) )
P6(:,:) = TRANSPOSE( POP(VN3,:N2) )
P7(:,:) = TRANSPOSE( POP(1:-30,1:-20) )
CALL s(P1)
CALL s(TRANSPOSE( POP ))
CALL s(TRANSPOSE( POP(:,:) ))
CALL s(TRANSPOSE( POP(1:N3,1:N2) ))
CALL s(TRANSPOSE( POP(N3-N2:N3,1:N3+N2-N3) ))
CALL s(TRANSPOSE( POP(VN3,1:N3+N2-N3) ))
CALL s(TRANSPOSE( POP(:N3,VN2) ))
CALL s(TRANSPOSE( POP(VN3,:N2) ))
call s( TRANSPOSE( POP(1:-30,1:-20) ))
if (any(abs(P1-1)>0.001))write(6,*) "NG"
if (any(abs(P2-1)>0.001))write(6,*) "NG"
if (any(abs(P3-1)>0.001))write(6,*) "NG"
if (any(abs(P4-1)>0.001))write(6,*) "NG"
if (any(abs(P5-1)>0.001))write(6,*) "NG"
if (any(abs(P6-1)>0.001))write(6,*) "NG"
if (any(abs(P7-1)>0.001))write(6,*) "NG"
print *,'pass'
contains
subroutine s(x)
real,dimension(:,:)::x
end subroutine
subroutine t(x)
real,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-cos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
end subroutine
end
