subroutine s2(n1,n4,n5)
integer,dimension(-n5:-n1,-n4:-n1)::a,b,c
a=1
b=2
do k2=-1,-4,-1
do k1=-1,-5,-1
associate( p=>a,w=>c)
 w(k1,k2)=p(k1,k2)+b(k1,k2)
end associate
end do
end do
if (any(c/=3)) print *,201
!
a=1
b=2
associate( p=>a,w=>c)
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(k1,k2)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any(c/=3)) print *,202
!
a=1
b=2
do k2=-1,-4,-1
do k1=-1,-5,-1
associate( p=>a(k1,k2),w=>c(k1,k2))
 w=p+b(k1,k2)
end associate
end do
end do
if (any(c/=3)) print *,203
!
a=1
b=2
associate( p=>a,w=>c)
 w(:,:)=p(:,:)+b(:,:)
end associate
if (any(c/=3)) print *,204
!
a=1
b=2
associate( p=>a(:,:),w=>c(:,:))
 w(:,:)=p(:,:)+b(:,:)
end associate
if (any(c/=3)) print *,205
!
a=1
b=2
associate( p=>a(-n1:-n5:-n1,-n1:-n4:-n1),w=>c(-n1:-n5:-n1,-n1:-n4:-n1))
 w(:,:)=p(:,:)+b(:,:)
end associate
if (any(c/=3)) print *,206
!
a=1
b=2
associate( p=>a(-n1:-n5:-n1,-n1:-n4:-n1),w=>c(-n1:-n5:-n1,-n1:-n4:-n1))
 w(n1:n5:n1,n1:n4:n1)=p(n1:n5:n1,n1:n4:n1)+b(-n1:-n5:-n1,-n1:-n4:-n1)
end associate
if (any(c/=3)) print *,207
!
a=1
b=2
associate( p=>a(:,:),w=>c(:,:))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(-k1,-k2)=p(-k1,-k2)+b(k1,k2)
end do
end do
end associate
if (any(c/=3)) print *,208
!
a=1
b=2
associate( p=>a(-n1:-n5:-n1,-n1:-n4:-n1),w=>c(-n1:-n5:-n1,-n1:-n4:-n1))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(-k1,-k2)=p(-k1,-k2)+b(k1,k2)
end do
end do
end associate
if (any(c/=3)) print *,209
end
subroutine s1(n1,n4,n5)
integer,dimension(n5,n4)::a,b,c
a=1
b=2
do k2=1,4
do k1=1,5
associate( p=>a,w=>c)
 w(k1,k2)=p(k1,k2)+b(k1,k2)
end associate
end do
end do
if (any(c/=3)) print *,101
!
a=1
b=2
associate( p=>a,w=>c)
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any(c/=3)) print *,102
!
a=1
b=2
do k2=1,4
do k1=1,5
associate( p=>a(k1,k2),w=>c(k1,k2))
 w=p+b(k1,k2)
end associate
end do
end do
if (any(c/=3)) print *,103
!
a=1
b=2
associate( p=>a,w=>c)
 w(:,:)=p(:,:)+b(:,:)
end associate
if (any(c/=3)) print *,104
!
a=1
b=2
associate( p=>a(:,:),w=>c(:,:))
 w(:,:)=p(:,:)+b(:,:)
end associate
if (any(c/=3)) print *,105
!
a=1
b=2
associate( p=>a(n1:n5,n1:n4),w=>c(n1:n5,n1:n4))
 w(:,:)=p(:,:)+b(:,:)
end associate
if (any(c/=3)) print *,106
!
a=1
b=2
associate( p=>a(n1:n5,n1:n4),w=>c(n1:n5,n1:n4))
 w(n1:n5,n1:n4)=p(n1:n5,n1:n4)+b(n1:n5,n1:n4)
end associate
if (any(c/=3)) print *,107
!
a=1
b=2
associate( p=>a(:,:),w=>c(:,:))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any(c/=3)) print *,108
!
a=1
b=2
associate( p=>a(n1:n5,n1:n4),w=>c(n1:n5,n1:n4))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any(c/=3)) print *,109
!
a=1
b=2
associate( p=>a(n1:n5,n1:n4),w=>c(n1:n5,n1:n4))
do k2=1,4
do k1=1,5
 w(k1,k2)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any(c/=3)) print *,109
end
n1=1;n4=4;n5=5
call       s1(n1,n4,n5)
call       s2(n1,n4,n5)
print *,'pass'
end
