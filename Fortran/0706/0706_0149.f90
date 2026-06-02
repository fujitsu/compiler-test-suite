c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      character,pointer:: pvs,pva(:)
      type x; character ,pointer:: pvs,pva(:);end type
      type (x)::xx
      type t; character         tvs,tva(2);end type
      type (t),target::tt1,tt2(2)
      character,target::tvs,tva(2)
      character,pointer::evs,eva(:)
      type (t),pointer::et1,et2(:)
      type w; integer i;character ,pointer:: pva(:);end type
      type (w)::ww
      i=1;k=1
      do,n=i,k
      tvs='1';tva=(/'2','3'/)
      tt1%tvs='a';tt1%tva=(/'b','c'/)
      tt2%tvs=(/'d','e'/);tt2(1)%tva=(/'f','g'/); tt2(2)%tva=(/'h','i'/)
      allocate(evs,eva(2),et1,et2(2))
      evs='1';tva=(/'2','3'/)
      et1%tvs='a';et1%tva=(/'b','c'/)
      et2%tvs=(/'d','e'/);et2(1)%tva=(/'f','g'/); et2(2)%tva=(/'h','i'/)
      ww=w(n,et2%tvs);if (.not.associated(ww%pva,et2%tvs))print *,'fail';
      if (any(ww%pva/=et2%tvs))print *,'fail'
      ww=w(n,et2%tvs(1:1))
      if (ww%i/=1)print *,'fail'
      if(.not.associated(ww%pva,et2%tvs(1:1)))print *,'fail'
      if (any(ww%pva/=et2%tvs(1:1)))print *,'fail'
      ww=w(n+1,et2%tvs(i:k))
      if (ww%i/=2)print *,'fail'
      if(.not.associated(ww%pva,et2%tvs(i:k)))print *,'fail'
      if (any(ww%pva/=et2%tvs(i:k)))print *,'fail'
      ww=w(n,tt2%tvs);if (.not.associated(ww%pva,tt2%tvs))print *,'fail';
      if (ww%i/=1)print *,'fail'
      if (any(ww%pva/=tt2%tvs))print *,'fail'
      ww=w(n,tt2%tvs(1:1))
      if (.not.associated(ww%pva,tt2%tvs(1:1)))print *,'fail';
      if (any(ww%pva/=tt2%tvs(1:1)))print *,'fail'
      ww=w(n,tt2%tvs(i:k))
      if (.not.associated(ww%pva,tt2%tvs(i:k)))print *,'fail';
      if (any(ww%pva/=tt2%tvs(i:k)))print *,'fail'
      ww=w(n,et2%tva(1))
      if (ww%i/=1)print *,'fail'
      if (.not.associated(ww%pva,et2%tva(1)))print *,'fail';
      if (any(ww%pva/=et2%tva(1)))print *,'fail'
      ww=w(n,et2%tva(i))
      if (.not.associated(ww%pva,et2%tva(i)))print *,'fail';
      if (any(ww%pva/=et2%tva(i)))print *,'fail'
      ww=w(n,et2%tva(1)(:))
      if (.not.associated(ww%pva,et2%tva(1)(:)))print *,'fail';
      if (any(ww%pva/=et2%tva(1)(:)))print *,'fail'
      ww=w(n,et2%tva(i)(i:k))
      if (.not.associated(ww%pva,et2%tva(i)(i:k)))print *,'fail'
      if (any(ww%pva/=et2%tva(i)(i:k)))print *,'fail'
      ww=w(n,tt2%tva(1))
      if (.not.associated(ww%pva,tt2%tva(1)))print *,'fail';
      if (any(ww%pva/=tt2%tva(1)))print *,'fail'
      ww=w(n,tt2%tva(i))
      if (.not.associated(ww%pva,tt2%tva(i)))print *,'fail';
      if (any(ww%pva/=tt2%tva(i)))print *,'fail'
      ww=w(n,tt2%tva(1)(:))
      if (.not.associated(ww%pva,tt2%tva(1)(:)))print *,'fail'
      if (any(ww%pva/=tt2%tva(1)(:)))print *,'fail'
      ww=w(n,tt2%tva(i)(i:k))
      if (.not.associated(ww%pva,tt2%tva(i)(i:k)))print *,'fail'
      if (any(ww%pva/=tt2%tva(i)(i:k)))print *,'fail'
      end do
      end
