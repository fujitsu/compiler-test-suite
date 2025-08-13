real,allocatable,dimension(:,:)::POP
real,allocatable,dimension(:,:)::P1
integer,allocatable,dimension(:)::VN2,VN3
allocate(POP(3,2))
allocate(P1(2,3))
allocate(VN2(2),VN3(3));VN2=(/1,2/);VN3=(/1,2,3/)
POP=reshape((/(i,i=1,6)/),(/3,2/))
N2=2;N3=3
P1(1:N2,1:N3) = TRANSPOSE( POP(:,:)+&
                 POP(1:N3,1:N2)  - &
                 POP(N3-N2:N3,1:N3+N2-N3)  +&
                 POP(VN3,1:N3+N2-N3)  - &
                 POP(N3-N2:N3,VN2)  + &
                 POP(VN3,VN2)  -&
                 POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2))  + &
                 real(reshape((/(i,i=1,6)/),(/3,2/))) - &
                 reshape((/1.,2.,3.,4.,5.,6./),(/3,2/)) + &
                 reshape((/POP(1:N3,1:N2)/),(/3,2/)) - &
                 reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/3,2/)) + &
                 real(reshape((/(i,i=1,6)/),(/N3,N2/))) - &
                 reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/)) + &
                 reshape((/POP(1:N3,1:N2)/),(/N3,N2/)) - &
                 reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/N3,N2/)) + &
                 POP(1:3,1:2)  - &
                 POP(1:3:N3-N2,1:N2:N3-N2)  )
write(21,*)(     TRANSPOSE( POP(:,:)+&
                 POP(1:N3,1:N2)  - &
                 POP(N3-N2:N3,1:N3+N2-N3)  +&
                 POP(VN3,1:N3+N2-N3)  - &
                 POP(N3-N2:N3,VN2)  + &
                 POP(VN3,VN2)  -&
                 POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2))  + &
                 real(reshape((/(i,i=1,6)/),(/3,2/))) - &
                 reshape((/1.,2.,3.,4.,5.,6./),(/3,2/)) + &
                 reshape((/POP(1:N3,1:N2)/),(/3,2/)) - &
                 reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/3,2/)) + &
                 real(reshape((/(i,i=1,6)/),(/N3,N2/))) - &
                 reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/)) + &
                 reshape((/POP(1:N3,1:N2)/),(/N3,N2/)) - &
                 reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/N3,N2/)) + &
                 POP(1:3,1:2)  - &
                 POP(1:3:N3-N2,1:N2:N3-N2)  ))
write(21,*)P1
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
rewind 21
do
read(21,*,end=1)x
if (any(abs(x-reshape((/1,4,2,5,3,6/),(/2,3/)))>0.001))write(6,*) "NG"
end do
1 end subroutine
end
