logical(4),parameter::t=.true.,f=.false.
logical(4),allocatable,dimension(:,:)::POP
logical(4),allocatable,dimension(:,:)::P1
integer,allocatable,dimension(:)::VN2,VN3
allocate(POP(3,2))
allocate(P1(2,3))
allocate(VN2(2),VN3(3));VN2=(/1,2/);VN3=(/1,2,3/)
POP=reshape((/t,f,t,f,t,f/),(/3,2/))
N2=2;N3=3
P1(1:N2,1:N3) = TRANSPOSE( POP(:,:).and. &
                 POP(1:N3,1:N2)  .and. &
                 POP(N3-N2:N3,1:N3+N2-N3)  .and. &
                 POP(VN3,1:N3+N2-N3)  .and. &
                 POP(N3-N2:N3,VN2)  .and. &
                 POP(VN3,VN2)  .and. &
                 POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2))  .and. &
                 logical(kind=4,L=reshape((/t,f,t,f,t,f/),(/3,2/))) .and. &
                 reshape((/t,f,t,f,t,f/),(/3,2/)) .and. &
                 reshape((/POP(1:N3,1:N2)/),(/3,2/)) .and. &
                 reshape((/POP(1:N3,1:N2).and.POP(VN3,VN2).and.POP(:,:)/),(/3,2/)) .and. &
                 logical(kind=4,L=reshape((/t,f,t,f,t,f/),(/N3,N2/))) .and. &
                 reshape((/t,f,t,f,t,f/),(/N3,N2/)) .and. &
                 reshape((/POP(1:N3,1:N2)/),(/N3,N2/)) .and. &
                 reshape((/POP(1:N3,1:N2).and.POP(VN3,VN2).and.POP(:,:)/),(/N3,N2/)) .and. &
                 POP(1:3,1:2)  .and. &
                 POP(1:3:N3-N2,1:N2:N3-N2).and. &
                 xcos(POP(1:3:N3-N2,1:N2:N3-N2)) .and. &
                 xcos(POP(1:3:N3-N2,1:N2:N3-N2)).and. &
                 ycos(POP(1:3:N3-N2,1:N2:N3-N2)).and. &
                 ycos(POP(1:3:N3-N2,1:N2:N3-N2)) )
call s(         TRANSPOSE( POP(:,:).and. &
                 POP(1:N3,1:N2)  .and. &
                 POP(N3-N2:N3,1:N3+N2-N3)  .and. &
                 POP(VN3,1:N3+N2-N3)  .and. &
                 POP(N3-N2:N3,VN2)  .and. &
                 POP(VN3,VN2)  .and. &
                 POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2))  .and. &
                 logical(kind=4,L=reshape((/t,f,t,f,t,f/),(/3,2/))) .and. &
                 reshape((/t,f,t,f,t,f/),(/3,2/)) .and. &
                 reshape((/POP(1:N3,1:N2)/),(/3,2/)) .and. &
                 reshape((/POP(1:N3,1:N2).and.POP(VN3,VN2).and.POP(:,:)/),(/3,2/)) .and. &
                 logical(kind=4,L=reshape((/t,f,t,f,t,f/),(/N3,N2/))) .and. &
                 reshape((/t,f,t,f,t,f/),(/N3,N2/)) .and. &
                 reshape((/POP(1:N3,1:N2)/),(/N3,N2/)) .and. &
                 reshape((/POP(1:N3,1:N2).and.POP(VN3,VN2).and.POP(:,:)/),(/N3,N2/)) .and. &
                 POP(1:3,1:2)  .and. &
                 POP(1:3:N3-N2,1:N2:N3-N2)  .and. &
                 ycos(POP(1:3:N3-N2,1:N2:N3-N2)) .and. &
                 xcos(POP(1:3:N3-N2,1:N2:N3-N2)) .and. &
                 ycos(POP(1:3:N3-N2,1:N2:N3-N2)).and. &
                 xcos(POP(1:3:N3-N2,1:N2:N3-N2)) ))
if (any((P1.neqv.reshape((/t,f,f,t,t,f/),(/2,3/)))))write(6,*) "NG"
print *,'pass'
contains
subroutine s(x)
logical(4),dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any((x.neqv.reshape((/t,f,f,t,t,f/),(/2,3/)))))write(6,*) "NG"
end subroutine
function xcos(x)
logical(4),dimension(:,:)::x
logical(4),dimension(size(x,dim=1),size(x,dim=2))::xcos
xcos=(x)
end function
elemental function ycos(x)
logical(4),intent(in)::x
logical(4)::ycos
ycos=(x)
end function
end
