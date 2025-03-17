type a
 integer a1(2,2,2)
end type
type b
 type(a):: b1(2,2,2)
end type
type c
 type(b):: c1(2,2,2)
end type
type (c):: d1(2,2,2)
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
d1%c1(j1,j2,j3)%b1(k1,k2,k3)%a1(n1,n2,n3)=1
d1(i1,i2,i3)%c1%b1(k1,k2,k3)%a1(n1,n2,n3)=1
d1(i1,i2,i3)%c1(j1,j2,j3)%b1%a1(n1,n2,n3)=1
d1(i1,i2,i3)%c1(j1,j2,j3)%b1(k1,k2,k3)%a1=1
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
do i1=1,2;do i2=1,2;do i3=1,2; do j1=1,2;do j2=1,2;do j3=1,2; do k1=1,2;do k2=1,2;do k3=1,2; do n1=1,2;do n2=1,2;do n3=1,2
if (any(d1%c1(j1,j2,j3)%b1(k1,k2,k3)%a1(n1,n2,n3)/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1%b1(k1,k2,k3)%a1(n1,n2,n3)/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1(j1,j2,j3)%b1%a1(n1,n2,n3)/=1))write(6,*) "NG"
if (any(d1(i1,i2,i3)%c1(j1,j2,j3)%b1(k1,k2,k3)%a1/=1))write(6,*) "NG"
end do; end do; end do
end do; end do; end do
end do; end do; end do
end do; end do; end do
print *,'pass'
end
