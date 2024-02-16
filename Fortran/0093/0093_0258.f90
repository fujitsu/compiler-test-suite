  module m1
  complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
  complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
   real    (8),parameter,dimension(*)::ra=[2,4,6,8]
   contains
   subroutine s01(r)
   real,pointer,intent(in)::r(:,:)
   if (any([r]/=ra)) print *,101,r
   end subroutine
   end
   use m1
   complex,target :: c(4),c2(2,2)
   complex,pointer:: p2(:,:)
   do k=1,4
   c(k)%re=ca(k)%re
   c(k)%im=ca(k)%im
    end do
      c2(:,:)%re=reshape(c(:)%re,[2,2])
      c2(:,:)%im=reshape(c(:)%im,[2,2])
      if (any([c2(:,:)%im]/=ra)) print *,101,c2(:,:)%im
      call s01(c2(:,:)%im)
     p2=>c2
      call s01(p2(:,:)%im)
      print *,'pass'
      end

