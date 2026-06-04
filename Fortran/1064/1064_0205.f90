module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
real    (8),parameter,dimension(*)::ra=[2,4,6,8]
integer::n2=2
contains
subroutine s01(r)
real,pointer,intent(in)::r(:,:)
if (any([r]/=ra)) print *,101,r
r=r+1
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
if (any([c2(::2,::2)%im]/=ra)) print *,101,c2(:,:)%im
call s01(c2(::2,::2)%im)
if (any([c2(::2,::2)%im]/=ra+1)) print *,102,c2(:,:)%im
allocate(p2(4,4),p(4))
do k=1,4
p(k)%re=ca(k)%re
p(k)%im=ca(k)%im
end do
p2(::n2,::n2)%re=reshape(p(:)%re,[2,2])
p2(::n2,::n2)%im=reshape(p(:)%im,[2,2])
call s01(p2(::n2,::n2)%im)
print *,'pass'
end
