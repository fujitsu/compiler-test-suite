subroutine s2(n1,n4,n5)
type x
integer x1
integer,allocatable,dimension(:,:) ::a,b,c
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v(n1+2,n4+2,n5+2)

allocate (v(n1,n5-1,n4)%y2%a(-n5:-n1,-n4:-n1),stat=kkk)
allocate (v(n1,n5-1,n4)%y2%b(-n5:-n1,-n4:-n1),stat=kkk)
allocate (v(n1,n5-1,n4)%y2%c(-n5:-n1,-n4:-n1),stat=kkk)
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
do k2=-1,-4,-1
do k1=-1,-5,-1
associate( p=>v(n1,n5-1,n4)%y2%a,w=>v(n1,n5-1,n4)%y2%c)
 w(k1,k2)=p(k1,k2)+v(n1,n5-1,n4)%y2%b(k1,k2)
end associate
end do
end do
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,201
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a,w=>v(n1,n5-1,n4)%y2%c)
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(k1,k2)=p(k1,k2)+v(n1,n5-1,n4)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,202
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
do k2=-1,-4,-1
do k1=-1,-5,-1
associate( p=>v(n1,n5-1,n4)%y2%a(k1,k2),w=>v(n1,n5-1,n4)%y2%c(k1,k2))
 w=p+v(n1,n5-1,n4)%y2%b(k1,k2)
end associate
end do
end do
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,203
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a,w=>v(n1,n5-1,n4)%y2%c)
 w(:,:)=p(:,:)+v(n1,n5-1,n4)%y2%b(:,:)
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,204
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(:,:),w=>v(n1,n5-1,n4)%y2%c(:,:))
 w(:,:)=p(:,:)+v(n1,n5-1,n4)%y2%b(:,:)
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,205
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(-n1:-n5:-n1,-n1:-n4:-n1),w=>v(n1,n5-1,n4)%y2%c(-n1:-n5:-n1,-n1:-n4:-n1))
 w(:,:)=p(:,:)+v(n1,n5-1,n4)%y2%b(:,:)
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,206
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(-n1:-n5:-n1,-n1:-n4:-n1),w=>v(n1,n5-1,n4)%y2%c(-n1:-n5:-n1,-n1:-n4:-n1))
 w(-n1+6:-n5+6:-n1,-n1+5:-n4+5:-n1)=p(-n1+6:-n5+6:-n1,-n1+5:-n4+5:-n1)+v(n1,n5-1,n4)%y2%b(-n1:-n5:-n1,-n1:-n4:-n1)
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,207
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(:,:),w=>v(n1,n5-1,n4)%y2%c(:,:))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(k1+6,k2+5)=p(k1+6,k2+5)+v(n1,n5-1,n4)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,208
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(-n1:-n5:-n1,-n1:-n4:-n1),w=>v(n1,n5-1,n4)%y2%c(-n1:-n5:-n1,-n1:-n4:-n1))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(k1+6,k2+5)=p(k1+6,k2+5)+v(n1,n5-1,n4)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,209
end
subroutine s1(n1,n4,n5)
type x
integer x1
integer,allocatable,dimension(:,:) ::a,b,c
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v(n1,n5-1,n4)

allocate (v(n1,n5-1,n4)%y2%a(n5,n4),stat=kkk)
allocate (v(n1,n5-1,n4)%y2%b(n5,n4),stat=kkk)
allocate (v(n1,n5-1,n4)%y2%c(n5,n4),stat=kkk)
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
do k2=1,4
do k1=1,5
associate( p=>v(n1,n5-1,n4)%y2%a,w=>v(n1,n5-1,n4)%y2%c)
 w(k1,k2)=p(k1,k2)+v(n1,n5-1,n4)%y2%b(k1,k2)
end associate
end do
end do
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,101
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a,w=>v(n1,n5-1,n4)%y2%c)
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+v(n1,n5-1,n4)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,102
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
do k2=1,4
do k1=1,5
associate( p=>v(n1,n5-1,n4)%y2%a(k1,k2),w=>v(n1,n5-1,n4)%y2%c(k1,k2))
 w=p+v(n1,n5-1,n4)%y2%b(k1,k2)
end associate
end do
end do
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,103
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a,w=>v(n1,n5-1,n4)%y2%c)
 w(:,:)=p(:,:)+v(n1,n5-1,n4)%y2%b(:,:)
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,104
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(:,:),w=>v(n1,n5-1,n4)%y2%c(:,:))
 w(:,:)=p(:,:)+v(n1,n5-1,n4)%y2%b(:,:)
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,105
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(n1:n5,n1:n4),w=>v(n1,n5-1,n4)%y2%c(n1:n5,n1:n4))
 w(:,:)=p(:,:)+v(n1,n5-1,n4)%y2%b(:,:)
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,106
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(n1:n5,n1:n4),w=>v(n1,n5-1,n4)%y2%c(n1:n5,n1:n4))
 w(n1:n5,n1:n4)=p(n1:n5,n1:n4)+v(n1,n5-1,n4)%y2%b(n1:n5,n1:n4)
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,107
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(:,:),w=>v(n1,n5-1,n4)%y2%c(:,:))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+v(n1,n5-1,n4)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,108
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(n1:n5,n1:n4),w=>v(n1,n5-1,n4)%y2%c(n1:n5,n1:n4))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+v(n1,n5-1,n4)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,109
!
v(n1,n5-1,n4)%y2%a=1
v(n1,n5-1,n4)%y2%b=2
associate( p=>v(n1,n5-1,n4)%y2%a(n1:n5,n1:n4),w=>v(n1,n5-1,n4)%y2%c(n1:n5,n1:n4))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+v(n1,n5-1,n4)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(n1,n5-1,n4)%y2%c/=3)) print *,109
end
n1=1;n4=4;n5=5
call       s1(n1,n4,n5)
call       s2(n1,n4,n5)
print *,'pass'
end
