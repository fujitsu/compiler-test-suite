c
c
      call s1
      print *,'pass'
      end
      module m1
      type x
        type(x),pointer ::x0
        character       ::x1,x2(-1:-1,-1:-1,-2:-1)
        character,pointer::x3,x4(:,:,:)
      end type
      type (x),pointer::v1(:,:,:)
      type (x),target ::v2(-1:-1,-1:-1,-2:-1)
      type (x)        ::v3(-1:-1,-1:-1,-2:-1)
      character,pointer::y1,y2(:,:,:)
      character,target ::y3,y4(-1:-1,-1:-1,-2:-1)
      interface q
       module procedure qs,qa
      end interface
      contains
      subroutine qs(ts,r,ps)
      character(*),target,optional::ts
      character(*),pointer,optional::ps
      character(*)::r
      intent(in)ts,r
      if (len(ts)/=1)print *,'fail'; if (len(ps)/=1)print *,'fail'
      if (len(r )/=1)print *,'fail'
      if (.not.present(ts))print *,'fail'
      if (.not.present(ps))print *,'fail'
      if (.not.associated(ps,ts))print *,'fail'
      if (ps/=ts)print *,'fail'
      if (ps/=r  )print *,'fail'
      end subroutine
      subroutine qa(ts,ps,r)
      character(*),target,optional::ts(:,:,:)
      character(*),pointer,optional::ps(:,:,:)
      character(*)::r(:,:,:)
      intent(in)ts,r
      if (len(ts)/=1)print *,'fail'; if (len(ps)/=1)print *,'fail'
      if (len(r )/=1)print *,'fail'
      if (.not.present(ts))print *,'fail'
      if (.not.present(ps))print *,'fail'
      if (.not.associated(ps,ts))print *,'fail'
      if (any(ps/=ts))print *,'fail'
      if (any(ps/=reshape((/r      /),(/1,1,2/))))print *,'fail'
      if (size(ps)/=2)print *,'fail'
      if (size(ts)/=2)print *,'fail'
      if (size(r )/=2)print *,'fail'
      end subroutine
      end 
      subroutine s1
      use m1
      do i=-1,-1;do k=-1,i
      y3='1';y4=reshape((/'2','3'/),(/-i,-k,2/))
      y1=>y3;call q(r=y3,ts=y3,ps=y1)
      y2=>y4;call q(r=y4,ts=y4,ps=y2)
      y1=>y3(:);call q(r=y3,ts=y3(:),ps=y1)
      y1=>y3(-i:-i);call q(r=y3,ts=y3(-i:-i),ps=y1)
      y1=>y3(-i:-k);call q(r=y3,ts=y3(-i:-k),ps=y1)
      y1=>y4(-1,-1,-2);call q(r=y4(-1,-1,-2),ts=y4(-1,-1,-2),ps=y1)
      y1=>y4(i,i,k);call q(r=y4(-1,-1,-1),ts=y4(-1,-1,-1),ps=y1)
      y1=>y4(-1,-1,-1)(:)
      call q(r=y4(-1,-1,-1),ts=y4(-1,-1,-1)(:),ps=y1)
      y1=>y4(i,i,i+k)(:);call q(r=y4(-1,-1,-2),ts=y4(-1,-1,-2)(:),ps=y1)
      y1=>y4(-1,-1,-1)(:1)
      call q(r=y4(-1,-1,-1),ts=y4(-1,-1,-1)(:1),ps=y1)
      y1=>y4(i,i,i+k)(-k:)
      call q(r=y4(-1,-1,-2),ts=y4(-1,-1,-2)(:-k),ps=y1)
      y2=>y4(::1,::1,-2:-1:1);call q(r=y4,ts=y4(::1,::1,-2:-1:1),ps=y2)
      y2=>y4(::-i,::-k,-2:i:-k)
      call q(r=y4,ts=y4(::-i,::-k,-2:i:-k),ps=y2)
      y2=>y4(-1:-1,-1:-1,-2:-1:1)
      call q(r=y4,ts=y4(-1:-1,-1:-1,-2:-1:1),ps=y2)
      y2=>y4(::1,::1,-2:-1:1)(-i:-k)
      call q(r=y4,ts=y4(::1,::1,-2:-1:1)(-i:-k),ps=y2)
      y2=>y4(::-i,::-k,-2:-1:-k)(-i:-k)
      call q(r=y4,ts=y4(::-i,::-k,-2:-1:-k)(-i:-k),ps=y2)
      y2=>y4(-1:-1,-1:-1,-2:-1:1)(-i:-k)
      call q(r=y4,ts=y4(-1:-1,-1:-1,-2:-1:1)(-i:-k),ps=y2)
      end do ;end do
      end
