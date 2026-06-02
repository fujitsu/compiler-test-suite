c
c
      call s1
      print *,'pass'
      end
      module mm1
      character*(*) ,parameter:: g1(-3:-1)='x',g2(-5:-4,-9:-7)='x'
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
      character*(1) b1(3),b2(2,3)
      character*(1) d1(3),d2(2,3)
      character*(1),pointer:: e1(:),e2(:,:)
      allocate(e1(-3:-1),e2(-5:-4,-9:-7))
      call       s21(b1,b2,-3,-1,-5,-4,-9,-7,len(b1),d1,d2,e1,e2)
      contains
      subroutine s21(b1,b2,m1,m2,m3,m4,m5,m6,n1     ,d1,d2,e1,e2)
      use mm1
      character*(1) ,target:: a1(-3:-1),a2(-5:-4,-9:-7)
      character*(*) ,target:: b1(m1:m2),b2(m3:m4,m5:m6)
      character*(n1),target:: c1(m1:m2),c2(m3:m4,m5:m6)
      character*(n1),target:: d1(m1:  ),d2(m3:  ,m5:  )
      character*(*),pointer:: e1(  :  ),e2(  :  ,  :  )
      character*(1),allocatable:: f1(:),f2(:,:)
      if (len(a1)/=1)print *,'fail'; if (len(a2)/=1)print *,'fail'
      if (len(b1)/=1)print *,'fail'; if (len(b2)/=1)print *,'fail'
      if (len(c1)/=1)print *,'fail'; if (len(c2)/=1)print *,'fail'
      if (len(d1)/=1)print *,'fail'; if (len(d2)/=1)print *,'fail'
      if (len(e1)/=1)print *,'fail'; if (len(e2)/=1)print *,'fail'
      if (len(f1)/=1)print *,'fail'; if (len(f2)/=1)print *,'fail'
      allocate(f1(m1:m2),f2(m3:m4,m5:m6))
      if (lbound(a1(:)//'a',dim=1)/=1)print *,'fail'
      call chk1(lbound(a1(:)//'a'), 1)
      if (ubound(a1(:)//'a',dim=1)/=3)print *,'fail'
      call chk1(ubound(a1(:)//'a'),3 )
      if (lbound(a2(:,:)//'a',dim=1)/=1 )print *,'fail'
      if (lbound(a2(:,:)//'a',dim=2)/=1 )print *,'fail'
      call chk2(lbound(a2(:,:)//'a'), 1,+1)
      if (ubound(a2(:,:)//'a',dim=1)/=2 )print *,'fail'
      if (ubound(a2(:,:)//'a',dim=2)/=3 )print *,'fail'
      call chk2(ubound(a2(:,:)//'a'), 2, 3)
      if (size(a1(:)//'a')/=3)print *,'fail'
      if (size(a1(:)//'a',dim=1)/=3)print *,'fail'
      if (size(a2(:,:)//'a')/=6)print *,'fail'
      if (size(a2(:,:)//'a',dim=1)/=2)print *,'fail'
      if (size(a2(:,:)//'a',dim=2)/=3)print *,'fail'
      call chk1(shape(a1(:)//'a'), 3)
      call chk2(shape(a2(:,:)//'a'),2,3)
      if (lbound(b1(:)//'a',dim=1)/=1)print *,'fail'
      call chk1(lbound(b1(:)//'a'), 1)
      if (ubound(b1(:)//'a',dim=1)/=3)print *,'fail'
      call chk1(ubound(b1(:)//'a'),3 )
      if (lbound(b2(:,:)//'a',dim=1)/=1 )print *,'fail'
      if (lbound(b2(:,:)//'a',dim=2)/=1 )print *,'fail'
      call chk2(lbound(b2(:,:)//'a'), 1,+1)
      if (ubound(b2(:,:)//'a',dim=1)/=2 )print *,'fail'
      if (ubound(b2(:,:)//'a',dim=2)/=3 )print *,'fail'
      call chk2(ubound(b2(:,:)//'a'), 2, 3)
      if (size(b1(:)//'a')/=3)print *,'fail'
      if (size(b1(:)//'a',dim=1)/=3)print *,'fail'
      if (size(b2(:,:)//'a')/=6)print *,'fail'
      if (size(b2(:,:)//'a',dim=1)/=2)print *,'fail'
      if (size(b2(:,:)//'a',dim=2)/=3)print *,'fail'
      call chk1(shape(b1(:)//'a'), 3)
      call chk2(shape(b2(:,:)//'a'),2,3)
      if (lbound(c1(:)//'a',dim=1)/=1)print *,'fail'
      call chk1(lbound(c1(:)//'a'), 1)
      if (ubound(c1(:)//'a',dim=1)/=3)print *,'fail'
      call chk1(ubound(c1(:)//'a'),3 )
      if (lbound(c2(:,:)//'a',dim=1)/=1 )print *,'fail'
      if (lbound(c2(:,:)//'a',dim=2)/=1 )print *,'fail'
      call chk2(lbound(c2(:,:)//'a'), 1,+1)
      if (ubound(c2(:,:)//'a',dim=1)/=2 )print *,'fail'
      if (ubound(c2(:,:)//'a',dim=2)/=3 )print *,'fail'
      call chk2(ubound(c2(:,:)//'a'), 2, 3)
      if (size(c1(:)//'a')/=3)print *,'fail'
      if (size(c1(:)//'a',dim=1)/=3)print *,'fail'
      if (size(c2(:,:)//'a')/=6)print *,'fail'
      if (size(c2(:,:)//'a',dim=1)/=2)print *,'fail'
      if (size(c2(:,:)//'a',dim=2)/=3)print *,'fail'
      call chk1(shape(c1(:)//'a'), 3)
      call chk2(shape(c2(:,:)//'a'),2,3)
      if (lbound(d1(:)//'a',dim=1)/=1)print *,'fail'
      call chk1(lbound(d1(:)//'a'), 1)
      if (ubound(d1(:)//'a',dim=1)/=3)print *,'fail'
      call chk1(ubound(d1(:)//'a'),3 )
      if (lbound(d2(:,:)//'a',dim=1)/=1 )print *,'fail'
      if (lbound(d2(:,:)//'a',dim=2)/=1 )print *,'fail'
      call chk2(lbound(d2(:,:)//'a'), 1,+1)
      if (ubound(d2(:,:)//'a',dim=1)/=2 )print *,'fail'
      if (ubound(d2(:,:)//'a',dim=2)/=3 )print *,'fail'
      call chk2(ubound(d2(:,:)//'a'), 2, 3)
      if (size(d1(:)//'a')/=3)print *,'fail'
      if (size(d1(:)//'a',dim=1)/=3)print *,'fail'
      if (size(d2(:,:)//'a')/=6)print *,'fail'
      if (size(d2(:,:)//'a',dim=1)/=2)print *,'fail'
      if (size(d2(:,:)//'a',dim=2)/=3)print *,'fail'
      call chk1(shape(d1(:)//'a'), 3)
      call chk2(shape(d2(:,:)//'a'),2,3)
      if (lbound(e1(:)//'a',dim=1)/=1)print *,'fail'
      call chk1(lbound(e1(:)//'a'), 1)
      if (ubound(e1(:)//'a',dim=1)/=3)print *,'fail'
      call chk1(ubound(e1(:)//'a'),3 )
      if (lbound(e2(:,:)//'a',dim=1)/=1 )print *,'fail'
      if (lbound(e2(:,:)//'a',dim=2)/=1 )print *,'fail'
      call chk2(lbound(e2(:,:)//'a'), 1,+1)
      if (ubound(e2(:,:)//'a',dim=1)/=2 )print *,'fail'
      if (ubound(e2(:,:)//'a',dim=2)/=3 )print *,'fail'
      call chk2(ubound(e2(:,:)//'a'), 2, 3)
      if (size(e1(:)//'a')/=3)print *,'fail'
      if (size(e1(:)//'a',dim=1)/=3)print *,'fail'
      if (size(e2(:,:)//'a')/=6)print *,'fail'
      if (size(e2(:,:)//'a',dim=1)/=2)print *,'fail'
      if (size(e2(:,:)//'a',dim=2)/=3)print *,'fail'
      call chk1(shape(e1(:)//'a'), 3)
      call chk2(shape(e2(:,:)//'a'),2,3)
      if (lbound(f1(:)//'a',dim=1)/=1)print *,'fail'
      call chk1(lbound(f1(:)//'a'), 1)
      if (ubound(f1(:)//'a',dim=1)/=3)print *,'fail'
      call chk1(ubound(f1(:)//'a'),3 )
      if (lbound(f2(:,:)//'a',dim=1)/=1 )print *,'fail'
      if (lbound(f2(:,:)//'a',dim=2)/=1 )print *,'fail'
      call chk2(lbound(f2(:,:)//'a'), 1,+1)
      if (ubound(f2(:,:)//'a',dim=1)/=2 )print *,'fail'
      if (ubound(f2(:,:)//'a',dim=2)/=3 )print *,'fail'
      call chk2(ubound(f2(:,:)//'a'), 2, 3)
      if (size(f1(:)//'a')/=3)print *,'fail'
      if (size(f1(:)//'a',dim=1)/=3)print *,'fail'
      if (size(f2(:,:)//'a')/=6)print *,'fail'
      if (size(f2(:,:)//'a',dim=1)/=2)print *,'fail'
      if (size(f2(:,:)//'a',dim=2)/=3)print *,'fail'
      call chk1(shape(f1(:)//'a'), 3)
      call chk2(shape(f2(:,:)//'a'),2,3)
      if (lbound(g1(:)//'a',dim=1)/=1)print *,'fail'
      call chk1(lbound(g1(:)//'a'), 1)
      if (ubound(g1(:)//'a',dim=1)/=3)print *,'fail'
      call chk1(ubound(g1(:)//'a'),3 )
      if (lbound(g2(:,:)//'a',dim=1)/=1 )print *,'fail'
      if (lbound(g2(:,:)//'a',dim=2)/=1 )print *,'fail'
      call chk2(lbound(g2(:,:)//'a'), 1,+1)
      if (ubound(g2(:,:)//'a',dim=1)/=2 )print *,'fail'
      if (ubound(g2(:,:)//'a',dim=2)/=3 )print *,'fail'
      call chk2(ubound(g2(:,:)//'a'), 2, 3)
      if (size(g1(:)//'a')/=3)print *,'fail'
      if (size(g1(:)//'a',dim=1)/=3)print *,'fail'
      if (size(g2(:,:)//'a')/=6)print *,'fail'
      if (size(g2(:,:)//'a',dim=1)/=2)print *,'fail'
      if (size(g2(:,:)//'a',dim=2)/=3)print *,'fail'
      call chk1(shape(g1(:)//'a'), 3)
      call chk2(shape(g2(:,:)//'a'),2,3)
      if (lbound((/g1(:)//'a'/),dim=1)/=1)print *,'fail'
      call chk1(lbound((/g1(:)//'a'/)), 1)
      if (ubound((/g1(:)//'a'/),dim=1)/=3)print *,'fail'
      call chk1(ubound((/g1(:)//'a'/)),3 )
      if (lbound(reshape((/g2(:,:)//'a'/),(/2,3/)),dim=1)/=1)
     1 print *,'fail'
      if (lbound(reshape((/g2(:,:)//'a'/),(/2,3/)),dim=2)/=1)
     1 print *,'fail'
      call chk2( lbound(reshape((/g2(:,:)//'a'/),(/2,3/))),1,1)
      if (ubound(reshape((/g2(:,:)//'a'/),(/2,3/)),dim=1)/=2)
     1 print *,'fail'
      if (ubound(reshape((/g2(:,:)//'a'/),(/2,3/)),dim=2)/=3)
     1 print *,'fail'
      call chk2( ubound(reshape((/g2(:,:)//'a'/),(/2,3/))),2,3)
      if (size(reshape((/g2(:,:)//'a'/),(/2,3/)))/=6)print *,'fail'
      if (size(        (/g1(:  )//'a'/)         )/=3)print *,'fail'
      if (size(        (/g1(:  )//'a'/),dim=1   )/=3)print *,'fail'
      if (size(reshape((/g2(:,:)//'a'/),(/2,3/)),dim=1)/=2)
     1 print *,'fail'
      if (size(reshape((/g2(:,:)//'a'/),(/2,3/)),dim=2)/=3)
     1 print *,'fail'
      call chk2(shape(reshape((/g2(:,:)//'a'/),(/2,3/))),2,3)
      call chk1(shape(        (/g1(:  )//'a'/)         ),3  )
      call chk1(shape(        (/g2(:,:)//'a'/)         ),6  )
      n2=2;n3=3
      if(lbound(reshape((/g2(:,:)//'a'/),(/n2,n3/)),dim=1)/=1)
     1 print *,'fail'
      if(lbound(reshape((/g2(:,:)//'a'/),(/n2,n3/)),dim=2)/=1)
     1 print *,'fail'
      call chk2( lbound(reshape((/g2(:,:)//'a'/),(/n2,n3/))),1,1)
      if(ubound(reshape((/g2(:,:)//'a'/),(/n2,n3/)),dim=1)/=2)
     1 print *,'fail'
      if(ubound(reshape((/g2(:,:)//'a'/),(/n2,n3/)),dim=2)/=3)
     1 print *,'fail'
      call chk2( ubound(reshape((/g2(:,:)//'a'/),(/n2,n3/))),2,3)
      if (size(reshape((/g2(:,:)//'a'/),(/n2,n3/)))/=6)print *,'fail'
      if (size(reshape((/g2(:,:)//'a'/),(/n2,n3/)),dim=1)/=2)
     1 print *,'fail'
      if (size(reshape((/g2(:,:)//'a'/),(/n2,n3/)),dim=2)/=3)
     1 print *,'fail'
      call chk2(shape(reshape((/g2(:,:)//'a'/),(/n2,n3/))),2,3)
      end subroutine
      end subroutine
