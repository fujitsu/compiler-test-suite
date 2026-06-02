c
c
      call s1
      print *,'pass'
      end
      module mm1
      character*(*) ,parameter:: g1(-3:-1)='x',g2(-5:-4,-9:-7)='x'
      type st1
        character*1 y11(-3:-1),y21(-5:-4,-9:-7)
        character*1,pointer:: z11(:),z21(:,:),z12(:),z22(:,:)
      end type
      type st2
        character*1 y11(-3:-1),y21(-5:-4,-9:-7)
      end type
      type (st2),parameter::w=st2('x','x')
      type (st2),parameter::ww(2)=st2('x','x')
      contains
       subroutine chk1(a,i) 
       integer a(:),i
       if (a(1)/=i)print *,'fail'
       end subroutine
       subroutine chk2(a,i,j)
       integer a(:)
       if (a(1)/=i)print *,'fail'
       if (a(2)/=j)print *,'fail'
       end subroutine
      end module
      subroutine s1
      call       s21
      contains
      subroutine s21
      use mm1
      type(st1):: z,zz(2)
      allocate(z%z11(-3:-1),z%z21(-5:-4,-9:-7))
      allocate(zz(2)%z11(-3:-1),zz(2)%z21(-5:-4,-9:-7))
      z%z12=>z%z11;z%z22=>z%z21
      zz(2)%z12=>zz(2)%z11;zz(2)%z22=>zz(2)%z21
      if (lbound(z%z11(:),dim=1)/=1)print *,'fail'
      call chk1(lbound(z%z11(:)),1)
      if (ubound(z%z11(:),dim=1)/=3)print *,'fail'
      call chk1(ubound(z%z11(:)),3)
      if (lbound(z%z21(:,:),dim=1)/=1)print *,'fail'
      if (lbound(z%z21(:,:),dim=2)/=1)print *,'fail'
      call chk2(lbound(z%z21(:,:)),1,1)
      if (ubound(z%z21(:,:),dim=1)/=2)print *,'fail'
      if (ubound(z%z21(:,:),dim=2)/=3)print *,'fail'
      call chk2(ubound(z%z21(:,:)),2,3)
      if (size(z%z11(:))/=3)print *,'fail'
      if (size(z%z11(:),dim=1)/=3)print *,'fail'
      if (size(z%z21(:,:))/=6)print *,'fail'
      if (size(z%z21(:,:),dim=1)/=2)print *,'fail'
      if (size(z%z21(:,:),dim=2)/=3)print *,'fail'
      call chk1(shape(z%z11(:)), 3)
      call chk2(shape(z%z21(:,:)),2,3)
      if (lbound(z%z12(:),dim=1)/=1)print *,'fail'
      call chk1(lbound(z%z12(:)),1)
      if (ubound(z%z12(:),dim=1)/=3)print *,'fail'
      call chk1(ubound(z%z12(:)),3)
      if (lbound(z%z22(:,:),dim=1)/=1)print *,'fail'
      if (lbound(z%z22(:,:),dim=2)/=1)print *,'fail'
      call chk2(lbound(z%z22(:,:)),1,1)
      if (ubound(z%z22(:,:),dim=1)/=2)print *,'fail'
      if (ubound(z%z22(:,:),dim=2)/=3)print *,'fail'
      call chk2(ubound(z%z22(:,:)),2,3)
      if (size(z%z12(:))/=3)print *,'fail'
      if (size(z%z12(:),dim=1)/=3)print *,'fail'
      if (size(z%z22(:,:))/=6)print *,'fail'
      if (size(z%z22(:,:),dim=1)/=2)print *,'fail'
      if (size(z%z22(:,:),dim=2)/=3)print *,'fail'
      call chk1(shape(z%z12(:)), 3)
      call chk2(shape(z%z22(:,:)),2,3)
      if (lbound(z%y11(:),dim=1)/=1)print *,'fail'
      call chk1(lbound(z%y11(:)),1)
      if (ubound(z%y11(:),dim=1)/=3)print *,'fail'
      call chk1(ubound(z%y11(:)),3)
      if (lbound(z%y21(:,:),dim=1)/=1)print *,'fail'
      if (lbound(z%y21(:,:),dim=2)/=1)print *,'fail'
      call chk2(lbound(z%y21(:,:)),1,1)
      if (ubound(z%y21(:,:),dim=1)/=2)print *,'fail'
      if (ubound(z%y21(:,:),dim=2)/=3)print *,'fail'
      call chk2(ubound(z%y21(:,:)),2,3)
      if (size(z%y11(:))/=3)print *,'fail'
      if (size(z%y11(:),dim=1)/=3)print *,'fail'
      if (size(z%y21(:,:))/=6)print *,'fail'
      if (size(z%y21(:,:),dim=1)/=2)print *,'fail'
      if (size(z%y21(:,:),dim=2)/=3)print *,'fail'
      call chk1(shape(z%y11(:)), 3)
      call chk2(shape(z%y21(:,:)),2,3)
      if (lbound(w%y11(:),dim=1)/=1)print *,'fail'
      call chk1(lbound(w%y11(:)),1)
      if (ubound(w%y11(:),dim=1)/=3)print *,'fail'
      call chk1(ubound(w%y11(:)),3)
      if (lbound(w%y21(:,:),dim=1)/=1)print *,'fail'
      if (lbound(w%y21(:,:),dim=2)/=1)print *,'fail'
      call chk2(lbound(w%y21(:,:)),1,1)
      if (ubound(w%y21(:,:),dim=1)/=2)print *,'fail'
      if (ubound(w%y21(:,:),dim=2)/=3)print *,'fail'
      call chk2(ubound(w%y21(:,:)),2,3)
      if (size(w%y11(:))/=3)print *,'fail'
      if (size(w%y11(:),dim=1)/=3)print *,'fail'
      if (size(w%y21(:,:))/=6)print *,'fail'
      if (size(w%y21(:,:),dim=1)/=2)print *,'fail'
      if (size(w%y21(:,:),dim=2)/=3)print *,'fail'
      call chk1(shape(w%y11(:)), 3)
      call chk2(shape(w%y21(:,:)),2,3)
      if (lbound(zz(2)%z11(:),dim=1)/=1)print *,'fail'
      call chk1(lbound(zz(2)%z11(:)),1)
      if (ubound(zz(2)%z11(:),dim=1)/=3)print *,'fail'
      call chk1(ubound(zz(2)%z11(:)),3)
      if (lbound(zz(2)%z21(:,:),dim=1)/=1)print *,'fail'
      if (lbound(zz(2)%z21(:,:),dim=2)/=1)print *,'fail'
      call chk2(lbound(zz(2)%z21(:,:)),1,1)
      if (ubound(zz(2)%z21(:,:),dim=1)/=2)print *,'fail'
      if (ubound(zz(2)%z21(:,:),dim=2)/=3)print *,'fail'
      call chk2(ubound(zz(2)%z21(:,:)),2,3)
      if (size(zz(2)%z11(:))/=3)print *,'fail'
      if (size(zz(2)%z11(:),dim=1)/=3)print *,'fail'
      if (size(zz(2)%z21(:,:))/=6)print *,'fail'
      if (size(zz(2)%z21(:,:),dim=1)/=2)print *,'fail'
      if (size(zz(2)%z21(:,:),dim=2)/=3)print *,'fail'
      call chk1(shape(zz(2)%z11(:)), 3)
      call chk2(shape(zz(2)%z21(:,:)),2,3)
      if (lbound(zz(2)%z12(:),dim=1)/=1)print *,'fail'
      call chk1(lbound(zz(2)%z12(:)),1)
      if (ubound(zz(2)%z12(:),dim=1)/=3)print *,'fail'
      call chk1(ubound(zz(2)%z12(:)),3)
      if (lbound(zz(2)%z22(:,:),dim=1)/=1)print *,'fail'
      if (lbound(zz(2)%z22(:,:),dim=2)/=1)print *,'fail'
      call chk2(lbound(zz(2)%z22(:,:)),1,1)
      if (ubound(zz(2)%z22(:,:),dim=1)/=2)print *,'fail'
      if (ubound(zz(2)%z22(:,:),dim=2)/=3)print *,'fail'
      call chk2(ubound(zz(2)%z22(:,:)),2,3)
      if (size(zz(2)%z12(:))/=3)print *,'fail'
      if (size(zz(2)%z12(:),dim=1)/=3)print *,'fail'
      if (size(zz(2)%z22(:,:))/=6)print *,'fail'
      if (size(zz(2)%z22(:,:),dim=1)/=2)print *,'fail'
      if (size(zz(2)%z22(:,:),dim=2)/=3)print *,'fail'
      call chk1(shape(zz(2)%z12(:)), 3)
      call chk2(shape(zz(2)%z22(:,:)),2,3)
      if (lbound(zz(2)%y11(:),dim=1)/=1)print *,'fail'
      call chk1(lbound(zz(2)%y11(:)),1)
      if (ubound(zz(2)%y11(:),dim=1)/=3)print *,'fail'
      call chk1(ubound(zz(2)%y11(:)),3)
      if (lbound(zz(2)%y21(:,:),dim=1)/=1)print *,'fail'
      if (lbound(zz(2)%y21(:,:),dim=2)/=1)print *,'fail'
      call chk2(lbound(zz(2)%y21(:,:)),1,1)
      if (ubound(zz(2)%y21(:,:),dim=1)/=2)print *,'fail'
      if (ubound(zz(2)%y21(:,:),dim=2)/=3)print *,'fail'
      call chk2(ubound(zz(2)%y21(:,:)),2,3)
      if (size(zz(2)%y11(:))/=3)print *,'fail'
      if (size(zz(2)%y11(:),dim=1)/=3)print *,'fail'
      if (size(zz(2)%y21(:,:))/=6)print *,'fail'
      if (size(zz(2)%y21(:,:),dim=1)/=2)print *,'fail'
      if (size(zz(2)%y21(:,:),dim=2)/=3)print *,'fail'
      call chk1(shape(zz(2)%y11(:)), 3)
      call chk2(shape(zz(2)%y21(:,:)),2,3)
      if (lbound(ww(2)%y11(:),dim=1)/=1)print *,'fail'
      call chk1(lbound(ww(2)%y11(:)),1)
      if (ubound(ww(2)%y11(:),dim=1)/=3)print *,'fail'
      call chk1(ubound(ww(2)%y11(:)),3)
      if (lbound(ww(2)%y21(:,:),dim=1)/=1)print *,'fail'
      if (lbound(ww(2)%y21(:,:),dim=2)/=1)print *,'fail'
      call chk2(lbound(ww(2)%y21(:,:)),1,1)
      if (ubound(ww(2)%y21(:,:),dim=1)/=2)print *,'fail'
      if (ubound(ww(2)%y21(:,:),dim=2)/=3)print *,'fail'
      call chk2(ubound(ww(2)%y21(:,:)),2,3)
      if (size(ww(2)%y11(:))/=3)print *,'fail'
      if (size(ww(2)%y11(:),dim=1)/=3)print *,'fail'
      if (size(ww(2)%y21(:,:))/=6)print *,'fail'
      if (size(ww(2)%y21(:,:),dim=1)/=2)print *,'fail'
      if (size(ww(2)%y21(:,:),dim=2)/=3)print *,'fail'
      call chk1(shape(ww(2)%y11(:)), 3)
      call chk2(shape(ww(2)%y21(:,:)),2,3)
      end subroutine
      end subroutine
