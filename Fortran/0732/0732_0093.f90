real,allocatable,dimension(:,:)::POP
real,allocatable,dimension(:,:)::P1,P2,P3,P4,P5,P6,P7,P8,P9,PA,PB,PC,PD,PE,PF,PG,PH
integer,allocatable,dimension(:)::VN2,VN3
allocate(POP(3,2))
allocate(P1(2,3),P2(2,3),P3(2,3),P4(2,3),P5(2,3),P6(2,3),P7(2,3),P8(2,3),P9(2,3),PA(2,3),PB(2,3),PC(2,3),PD(2,3),PE(2,3),PF(2,3),PG(2,3),PH(2,3))
allocate(VN2(2),VN3(3));VN2=(/1,2/);VN3=(/1,2,3/)
POP=reshape((/(i,i=1,6)/),(/3,2/))
N2=2;N3=3
P1(1:N2,1:N3) = TRANSPOSE( POP(:,:) )
P2(1:N2,1:N3) = TRANSPOSE( POP(1:N3,1:N2) )
P3(1:N2,1:N3) = TRANSPOSE( POP(N3-N2:N3,1:N3+N2-N3) )
P4(1:N2,1:N3) = TRANSPOSE( POP(VN3,1:N3+N2-N3) )
P5(1:N2,1:N3) = TRANSPOSE( POP(N3-N2:N3,VN2) )
P6(1:N2,1:N3) = TRANSPOSE( POP(VN3,VN2) )
P7(1:N2,1:N3) = TRANSPOSE( POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2)) )
P8(1:N2,1:N3) = TRANSPOSE( real(reshape((/(i,i=1,6)/),(/3,2/))))
P9(1:N2,1:N3) = TRANSPOSE( reshape((/1.,2.,3.,4.,5.,6./),(/3,2/)))
PA(1:N2,1:N3) = TRANSPOSE( reshape((/POP(1:N3,1:N2)/),(/3,2/)))
PB(1:N2,1:N3) = TRANSPOSE( reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/3,2/)))
PC(1:N2,1:N3) = TRANSPOSE( real(reshape((/(i,i=1,6)/),(/N3,N2/))))
PD(1:N2,1:N3) = TRANSPOSE( reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/)))
PE(1:N2,1:N3) = TRANSPOSE( reshape((/POP(1:N3,1:N2)/),(/N3,N2/)))
PF(1:N2,1:N3) = TRANSPOSE( reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/N3,N2/)))
PG(1:N2,1:N3) = TRANSPOSE( POP(1:3,1:2) )
PH(1:N2,1:N3) = TRANSPOSE( POP(1:3:N3-N2,1:N2:N3-N2) )
write(1,*)(TRANSPOSE( POP(:,:) ))
write(1,*)(TRANSPOSE( POP(1:N3,1:N2) ))
write(1,*)(TRANSPOSE( POP(N3-N2:N3,1:N3+N2-N3) ))
write(1,*)(TRANSPOSE( POP(VN3,1:N3+N2-N3) ))
write(1,*)(TRANSPOSE( POP(N3-N2:N3,VN2) ))
write(1,*)(TRANSPOSE( POP(VN3,VN2) ))
write(1,*)(TRANSPOSE( POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2)) ))
write(1,*)(TRANSPOSE( real(reshape((/(i,i=1,6)/),(/3,2/)))))
write(1,*)(TRANSPOSE( reshape((/1.,2.,3.,4.,5.,6./),(/3,2/))))
write(1,*)( TRANSPOSE( reshape((/POP(1:N3,1:N2)/),(/3,2/))))
write(1,*)(TRANSPOSE( reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/3,2/))))
write(1,*)( TRANSPOSE( real(reshape((/(i,i=1,6)/),(/N3,N2/)))))
write(1,*)( TRANSPOSE( reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/))))
write(1,*)( TRANSPOSE( reshape((/POP(1:N3,1:N2)/),(/N3,N2/))))
write(1,*)( TRANSPOSE( reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/N3,N2/))))
write(1,*)( TRANSPOSE( POP(1:3,1:2) ))
write(1,*)( TRANSPOSE( POP(1:3:N3-N2,1:N2:N3-N2) ))
write(1,*) P1
write(1,*) P2
write(1,*) P3
write(1,*) P4
write(1,*) P5
write(1,*) P6
write(1,*) P7
write(1,*) P8
write(1,*) P9
write(1,*) PA
write(1,*) PB
write(1,*) PC
write(1,*) PD
write(1,*) PE
write(1,*) PF
write(1,*) PG
call chk
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
if (any(abs(x-cos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
end subroutine
subroutine chk
real,dimension(2,3)::x
rewind 1
do
read(1,*,end=1)x
if (any(abs(x-reshape((/1,4,2,5,3,6/),(/2,3/)))>0.001))write(6,*) "NG"
end do
1 end subroutine
end
