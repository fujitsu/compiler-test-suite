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
      i=1;k=1
      tvs='1';tva=(/'2','3'/)
      tt1%tvs='a';tt1%tva=(/'b','c'/)
      tt2%tvs=(/'d','e'/);tt2(1)%tva=(/'f','g'/); tt2(2)%tva=(/'h','i'/)
      allocate(evs,eva(2),et1,et2(2))
      evs='1';tva=(/'2','3'/)
      et1%tvs='a';et1%tva=(/'b','c'/)
      et2%tvs=(/'d','e'/);et2(1)%tva=(/'f','g'/); et2(2)%tva=(/'h','i'/)
      pva=>et2%tvs;if (.not.associated(pva,et2%tvs))print *,'fail';
      if (any(pva/=et2%tvs))print *,'fail'
      pva=>et2%tvs(1:1);if(.not.associated(pva,et2%tvs(1:1)))
     1 print *,'fail'
      if (any(pva/=et2%tvs(1:1)))print *,'fail'
      pva=>et2%tvs(i:k);if(.not.associated(pva,et2%tvs(i:k)))
     1 print *,'fail'
      if (any(pva/=et2%tvs(i:k)))print *,'fail'
      pva=>tt2%tvs;if (.not.associated(pva,tt2%tvs))print *,'fail';
      if (any(pva/=tt2%tvs))print *,'fail'
      pva=>tt2%tvs(1:1)
      if (.not.associated(pva,tt2%tvs(1:1)))print *,'fail';
      if (any(pva/=tt2%tvs(1:1)))print *,'fail'
      pva=>tt2%tvs(i:k)
      if (.not.associated(pva,tt2%tvs(i:k)))print *,'fail';
      if (any(pva/=tt2%tvs(i:k)))print *,'fail'
      pva=>et2%tva(1);if (.not.associated(pva,et2%tva(1)))print *,'fail';
      if (any(pva/=et2%tva(1)))print *,'fail'
      pva=>et2%tva(i);if (.not.associated(pva,et2%tva(i)))print *,'fail';
      if (any(pva/=et2%tva(i)))print *,'fail'
      pva=>et2%tva(1)(:)
      if (.not.associated(pva,et2%tva(1)(:)))print *,'fail';
      if (any(pva/=et2%tva(1)(:)))print *,'fail'
      pva=>et2%tva(i)(i:k)
      if (.not.associated(pva,et2%tva(i)(i:k)))print *,'fail'
      if (any(pva/=et2%tva(i)(i:k)))print *,'fail'
      pva=>tt2%tva(1);if (.not.associated(pva,tt2%tva(1)))print *,'fail';
      if (any(pva/=tt2%tva(1)))print *,'fail'
      pva=>tt2%tva(i);if (.not.associated(pva,tt2%tva(i)))print *,'fail';
      if (any(pva/=tt2%tva(i)))print *,'fail'
      pva=>tt2%tva(1)(:);
      if (.not.associated(pva,tt2%tva(1)(:)))print *,'fail'
      if (any(pva/=tt2%tva(1)(:)))print *,'fail'
      pva=>tt2%tva(i)(i:k)
      if (.not.associated(pva,tt2%tva(i)(i:k)))print *,'fail'
      if (any(pva/=tt2%tva(i)(i:k)))print *,'fail'
      end
