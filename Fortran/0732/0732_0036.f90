integer(8),allocatable,dimension(:,:)::POP
integer(8),allocatable,dimension(:,:)::P1
integer(8),allocatable,dimension(:)::VN2,VN3
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
                 int(kind=8,a=reshape((/(i,i=1,6)/),(/3,2/))) - &
                 reshape((/1_8,2_8,3_8,4_8,5_8,6_8/),(/3,2/)) + &
                 reshape((/POP(1:N3,1:N2)/),(/3,2/)) - &
                 reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/3,2/)) + &
                 int(kind=8,a=reshape((/(i,i=1,6)/),(/N3,N2/))) - &
                 reshape((/1_8,2_8,3_8,4_8,5_8,6_8/),(/N3,N2/)) + &
                 reshape((/POP(1:N3,1:N2)/),(/N3,N2/)) - &
                 reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/N3,N2/)) + &
                 POP(1:3,1:2)  - &
                 POP(1:3:N3-N2,1:N2:N3-N2)+ &
                 xcos(POP(1:3:N3-N2,1:N2:N3-N2)) - &
                 xcos(POP(1:3:N3-N2,1:N2:N3-N2))+ &
                 ycos(POP(1:3:N3-N2,1:N2:N3-N2))- &
                 ycos(POP(1:3:N3-N2,1:N2:N3-N2)) )
call s(         TRANSPOSE( POP(:,:)+&
                 POP(1:N3,1:N2)  - &
                 POP(N3-N2:N3,1:N3+N2-N3)  +&
                 POP(VN3,1:N3+N2-N3)  - &
                 POP(N3-N2:N3,VN2)  + &
                 POP(VN3,VN2)  -&
                 POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2))  + &
                 int(kind=8,a=reshape((/(i,i=1,6)/),(/3,2/))) - &
                 reshape((/1_8,2_8,3_8,4_8,5_8,6_8/),(/3,2/)) + &
                 reshape((/POP(1:N3,1:N2)/),(/3,2/)) - &
                 reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/3,2/)) + &
                 int(kind=8,a=reshape((/(i,i=1,6)/),(/N3,N2/))) - &
                 reshape((/1_8,2_8,3_8,4_8,5_8,6_8/),(/N3,N2/)) + &
                 reshape((/POP(1:N3,1:N2)/),(/N3,N2/)) - &
                 reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/N3,N2/)) + &
                 POP(1:3,1:2)  - &
                 POP(1:3:N3-N2,1:N2:N3-N2)  + &
                 ycos(POP(1:3:N3-N2,1:N2:N3-N2)) - &
                 xcos(POP(1:3:N3-N2,1:N2:N3-N2)) + &
                 ycos(POP(1:3:N3-N2,1:N2:N3-N2))- &
                 xcos(POP(1:3:N3-N2,1:N2:N3-N2)) ))
if (any(abs(P1-reshape((/1,4,2,5,3,6/),(/2,3/)))>0))write(6,*) "NG"
print *,'pass'
contains
subroutine s(x)
integer(8),dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-reshape((/1,4,2,5,3,6/),(/2,3/)))>0))write(6,*) "NG"
end subroutine
subroutine t(x)
integer(8),dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-(reshape((/1,4,2,5,3,6/),(/2,3/))))>0))write(6,*) "NG"
end subroutine
function xcos(x)
integer(8),dimension(:,:)::x
integer(8),dimension(size(x,dim=1),size(x,dim=2))::xcos
xcos=(x)
end function
elemental function ycos(x)
integer(8),intent(in)::x
integer(8)::ycos
ycos=(x)
end function
end
