module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
real    (8),parameter,dimension(*)::ra=[2,4,6,8]
integer::n2=2
contains
subroutine s01(c)
complex,pointer,intent(in)::c(:,:)
if ( is_contiguous(c) ) print *,301
if ( is_contiguous(c%re) ) print *,302
if ( is_contiguous(c%im) ) print *,303
if (any(c%im/=reshape(ra,[2,2]))) print *,102,c%im
c=c+(0,1)
end subroutine
end
use m1
complex,target :: c(4),c2(4,4)
complex,pointer:: p(:),p2(:,:)
do k=1,4
c(k)%re=ca(k)%re
c(k)%im=ca(k)%im
end do
c2(::2,::2)%re=reshape(c(:)%re,[2,2])
c2(::2,::2)%im=reshape(c(:)%im,[2,2])
if (any([c2(::2,::2)%im]/=ra)) print *,101,c2(::2,::2)%im
call s01(c2(::2,::2))
if (any([c2(::2,::2)%im]/=ra+1)) print *,103,c2(::2,::2)%im
allocate(p2(4,4),p(4))
do k=1,4
p(k)%re=ca(k)%re
p(k)%im=ca(k)%im
end do
do k=1,4
c(k)%re=p(k)%re
c(k)%im=p(k)%im
end do
c2(::2,::2)%re=reshape(c(:)%re,[2,2])
c2(::2,::2)%im=reshape(c(:)%im,[2,2])
p2=> c2(::2,::2)
call s01(p2)
print *,'pass'
end
