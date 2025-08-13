subroutine ss1(n)
integer:: a(n)
integer:: b(5,5)=reshape((/(j,j=-1,-25,-1)/),(/5,5/))
integer:: bb(5,5)=reshape((/(j,j=-1,-25,-1)/),(/5,5/))
integer:: c(5,5)=reshape((/(j,j=-1,-25,-1)/),(/5,5/))
integer:: cc(5,5)=reshape((/(j,j=-1,-25,-1)/),(/5,5/))
forall (i=1:5)
forall (j=1:size(a(1:i)))
b(j,i)=1
bb(j,i)=1
end forall
end forall
do k=1,5
write(23,*)b(:,k)
end do
do k=1,5
write(23,*)bb(:,k)
end do
do i=1,5
do j=1,size(a(1:i))
c(j,i)=1
cc(j,i)=1
end do
end do
do k=1,5
write(23,*)c(:,k)
end do
do k=1,5
write(23,*)cc(:,k)
end do
end
subroutine ss2(n)
integer:: a(n),b(5,5)=reshape((/(j,j=-1,-25,-1)/),(/5,5/))
forall (i=1:n)
forall (j=1:size(a(1:i)))
b(j,i)=1
end forall
end forall
do k=1,5
write(23,*)b(:,k)
end do
end
call ss1(5)
call ss2(5)
call chk
print *,'pass'
end
subroutine chk
integer x(5)
rewind 23
do j=1,5
read(23,*)x;if (any(x/=(/1,-2,-3,-4,-5/)))write(6,*) "NG"
read(23,*)x;if (any(x/=(/1,1,-8,-9,-10/)))write(6,*) "NG"
read(23,*)x;if (any(x/=(/1,1,1,-14,-15/)))write(6,*) "NG"
read(23,*)x;if (any(x/=(/1,1,1,1,-20/)))write(6,*) "NG"
read(23,*)x;if (any(x/=1))write(6,*) "NG"
end do
end
