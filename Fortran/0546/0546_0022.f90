subroutine s2(n1,n4,n5,n3)
type x
integer x1
integer,pointer,dimension(:,:) ::a,b,c
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v(n5,n4,n1)

allocate (v(5,n3+n1,n1)%y2%a(-n5:-n1,-n4:-n1),stat=kkk)
allocate (v(5,n3+n1,n1)%y2%b(-n5:-n1,-n4:-n1),stat=kkk)
allocate (v(5,n3+n1,n1)%y2%c(-n5:-n1,-n4:-n1),stat=kkk)
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
do k2=-1,-4,-1
do k1=-1,-5,-1
associate( p=>v(5,n3+n1,n1)%y2%a,w=>v(5,n3+n1,n1)%y2%c)
 w(k1,k2)=p(k1,k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end associate
end do
end do
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,201
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a,w=>v(5,n3+n1,n1)%y2%c)
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(k1,k2)=p(k1,k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,202
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
do k2=-1,-4,-1
do k1=-1,-5,-1
associate( p=>v(5,n3+n1,n1)%y2%a(k1,k2),w=>v(5,n3+n1,n1)%y2%c(k1,k2))
 w=p+v(5,n3+n1,n1)%y2%b(k1,k2)
end associate
end do
end do
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,203
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a,w=>v(5,n3+n1,n1)%y2%c)
 w(:,:)=p(:,:)+v(5,n3+n1,n1)%y2%b(:,:)
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,204
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(:,:),w=>v(5,n3+n1,n1)%y2%c(:,:))
 w(:,:)=p(:,:)+v(5,n3+n1,n1)%y2%b(:,:)
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,205
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(-n1:-n5:-n1,-n1:-n4:-n1),w=>v(5,n3+n1,n1)%y2%c(-n1:-n5:-n1,-n1:-n4:-n1))
 w(:,:)=p(:,:)+v(5,n3+n1,n1)%y2%b(:,:)
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,206
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(-n1:-n5:-n1,-n1:-n4:-n1),w=>v(5,n3+n1,n1)%y2%c(-n1:-n5:-n1,-n1:-n4:-n1))
 w(n1:n5,n1:n4)=p(n1:n5,n1:n4)+v(5,n3+n1,n1)%y2%b(-n1:-n5:-n1,-n1:-n4:-n1)
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,207
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(:,:),w=>v(5,n3+n1,n1)%y2%c(:,:))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(-k1,-k2)=p(-k1,-k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,208
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(-n1:-n5:-n1,-n1:-n4:-n1),w=>v(5,n3+n1,n1)%y2%c(-n1:-n5:-n1,-n1:-n4:-n1))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(-k1,-k2)=p(-k1,-k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,209
end
subroutine s1(n1,n4,n5,n3)
type x
integer x1
integer,pointer,dimension(:,:) ::a,b,c
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v(5,n3+n1,n1)

allocate (v(5,n3+n1,n1)%y2%a(n5,n4),stat=kkk)
allocate (v(5,n3+n1,n1)%y2%b(n5,n4),stat=kkk)
allocate (v(5,n3+n1,n1)%y2%c(n5,n4),stat=kkk)
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
do k2=1,4
do k1=1,5
associate( p=>v(5,n3+n1,n1)%y2%a,w=>v(5,n3+n1,n1)%y2%c)
 w(k1,k2)=p(k1,k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end associate
end do
end do
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,101
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a,w=>v(5,n3+n1,n1)%y2%c)
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,102
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
do k2=1,4
do k1=1,5
associate( p=>v(5,n3+n1,n1)%y2%a(k1,k2),w=>v(5,n3+n1,n1)%y2%c(k1,k2))
 w=p+v(5,n3+n1,n1)%y2%b(k1,k2)
end associate
end do
end do
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,103
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a,w=>v(5,n3+n1,n1)%y2%c)
 w(:,:)=p(:,:)+v(5,n3+n1,n1)%y2%b(:,:)
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,104
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(:,:),w=>v(5,n3+n1,n1)%y2%c(:,:))
 w(:,:)=p(:,:)+v(5,n3+n1,n1)%y2%b(:,:)
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,105
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(n1:n5,n1:n4),w=>v(5,n3+n1,n1)%y2%c(n1:n5,n1:n4))
 w(:,:)=p(:,:)+v(5,n3+n1,n1)%y2%b(:,:)
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,106
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(n1:n5,n1:n4),w=>v(5,n3+n1,n1)%y2%c(n1:n5,n1:n4))
 w(n1:n5,n1:n4)=p(n1:n5,n1:n4)+v(5,n3+n1,n1)%y2%b(n1:n5,n1:n4)
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,107
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(:,:),w=>v(5,n3+n1,n1)%y2%c(:,:))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,108
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(n1:n5,n1:n4),w=>v(5,n3+n1,n1)%y2%c(n1:n5,n1:n4))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,109
!
v(5,n3+n1,n1)%y2%a=1
v(5,n3+n1,n1)%y2%b=2
associate( p=>v(5,n3+n1,n1)%y2%a(n1:n5,n1:n4),w=>v(5,n3+n1,n1)%y2%c(n1:n5,n1:n4))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+v(5,n3+n1,n1)%y2%b(k1,k2)
end do
end do
end associate
if (any(v(5,n3+n1,n1)%y2%c/=3)) print *,109
end
n1=1;n4=4;n5=5;n3=3
call       s1(n1,n4,n5,n3)
call       s2(n1,n4,n5,n3)
print *,'pass'
end
