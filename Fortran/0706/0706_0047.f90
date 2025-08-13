c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      call ts1
      call ts2
      end
      subroutine ts1
      parameter (j1=1)
      character*(j1),parameter::x1(1:2)=(/'a','b'/)
      character*(j1),parameter::x2(1:3,1:2)=
     1    reshape((/'1','2','3','4','5','6'/),(/3,2/))
      call ss1(x1,x2,j1,x2(1,1),x1,2)
      contains
      subroutine ss1(a1,a2,j1,c,d,j2)
      character*(j1)::a1(j2:)
      character*(j1)::a2(j2:,j2:)
      character*(j1)::b3(ubound(a1,dim=1))
      character*(j1)::b4(ubound(a2,dim=1))
      character*(j1)::b5(ubound(a2,dim=2))
      character*(j1)::b6(size  (a1,dim=1))
      character*(j1)::b7(size  (a2      ))
      character*(j1)::b8(ubound(a1//a1,dim=1))
      character*(j1)::b9(ubound(a2//a2,dim=1))
      character*(j1)::ba(ubound(a2//a2,dim=2))
      character*(j1)::bb(ubound(a1(:)(:)//a1(:)(:),dim=1))
      character*(j1)::bc(ubound(a2(:,:)(:)//a2(:,:)(:),dim=1))
      character*(j1)::bd(ubound(a2(:,:)(:)//a2(:,:)(:),dim=2))
      character*(j1)::be(0:lbound(a1,dim=1))
      character*(j1)::bf(0:lbound(a2,dim=1))
      character*(j1)::bg(0:lbound(a2,dim=2))
      character*(j1)::bh(0:lbound(a1//a1,dim=1))
      character*(j1)::bi(0:lbound(a2//a2,dim=1))
      character*(j1)::bj(0:lbound(a2//a2,dim=2))
      character*(j1)::bk(0:lbound(a1(:)(:)//a1(:)(:),dim=1))
      character*(j1)::bl(0:lbound(a2(:,:)(:)//a2(:,:)(:),dim=1))
      character*(j1)::bm(0:lbound(a2(:,:)(:)//a2(:,:)(:),dim=2))
      character*(*) c,d(*)
      if (size(b3)/=3)print *,'fail';if (ubound(b3,1)/=3)print *,'fail'
      if (size(b4)/=4)print *,'fail';if (ubound(b4,1)/=4)print *,'fail'
      if (size(b5)/=3)print *,'fail';if (ubound(b5,1)/=3)print *,'fail'
      if (size(b6)/=2)print *,'fail';if (ubound(b6,1)/=2)print *,'fail'
      if (size(b7)/=6)print *,'fail';if (ubound(b7,1)/=6)print *,'fail'
      if (size(b8)/=2)print *,'fail';if (ubound(b8,1)/=2)print *,'fail'
      if (size(b9)/=3)print *,'fail';if (ubound(b9,1)/=3)print *,'fail'
      if (size(ba)/=2)print *,'fail';if (ubound(ba,1)/=2)print *,'fail'
      if (size(bb)/=2)print *,'fail';if (ubound(bb,1)/=2)print *,'fail'
      if (size(bc)/=3)print *,'fail';if (ubound(bc,1)/=3)print *,'fail'
      if (size(bd)/=2)print *,'fail';if (ubound(bd,1)/=2)print *,'fail'
      if (size(be)/=3)print *,'fail';if (ubound(be,1)/=2)print *,'fail'
      if (size(bf)/=3)print *,'fail';if (ubound(bf,1)/=2)print *,'fail'
      if (size(bg)/=3)print *,'fail';if (ubound(bg,1)/=2)print *,'fail'
      if (size(bh)/=2)print *,'fail';if (ubound(bh,1)/=1)print *,'fail'
      if (size(bi)/=2)print *,'fail';if (ubound(bi,1)/=1)print *,'fail'
      if (size(bj)/=2)print *,'fail';if (ubound(bj,1)/=1)print *,'fail'
      if (size(bk)/=2)print *,'fail';if (ubound(bk,1)/=1)print *,'fail'
      if (size(bl)/=2)print *,'fail';if (ubound(bl,1)/=1)print *,'fail'
      if (size(bm)/=2)print *,'fail';if (ubound(bm,1)/=1)print *,'fail'
      if(lbound(a1,1)/=2)print *,'fail'
      if(lbound(a2,1)/=2)print *,'fail'
      if(lbound(a2,2)/=2)print *,'fail'
      if(ubound(a1,1)/=3)print *,'fail'
      if(ubound(a2,1)/=4)print *,'fail'
      if(ubound(a2,2)/=3)print *,'fail'
      if(size(a1)/=2)print *,'fail'; if(size(a2)/=6)print *,'fail'
      if(any(a1/=(/d(1),d(2)/)))print *,'fail'
      if(any(a2/= reshape(
     1   (/(char(i),i=ichar(c),ichar(c)+5)/),(/3,2/))))print *,'fail'
      end subroutine
      end subroutine
      subroutine ts2
      parameter (j1=1)
      character*(j1),parameter::x1(1:2)=(/'a','b'/)
      character*(j1),parameter::x2(1:3,1:2)=
     1    reshape((/'1','2','3','4','5','6'/),(/3,2/))
       interface
        subroutine ss21(a1,a2,j1,c,d,j2)
        character*(j1)::a1(j2:); character*(j1)::a2(j2:,j2:)
        character*(*) c,d(*); end subroutine
        subroutine ss22(a1,a2,j1,c,d,j2)
        character*(j1)::a1(j2:); character*(j1)::a2(j2:,j2:)
        character*(*) c,d(*); end subroutine
        subroutine ss23(a1,a2,j1,c,d,j2)
        character*(j1)::a1(j2:); character*(j1)::a2(j2:,j2:)
        character*(*) c,d(*); end subroutine
       end interface
      call ss21(x1,x2,j1,x2(1,1),x1,2)
      call ss22(x1,x2,j1,x2(1,1),x1,2)
      call ss23(x1,x2,j1,x2(1,1),x1,2)
      end subroutine
      subroutine ss21(a1,a2,j1,c,d,j2)
      entry      ss22(a1,a2,j1,c,d,j2)
      entry      ss23(a1,a2,j1,c,d,j2)
      character*(j1)::a1(j2:)
      character*(j1)::a2(j2:,j2:)
      character*(j1)::b3(ubound(a1,dim=1))
      character*(j1)::b4(ubound(a2,dim=1))
      character*(j1)::b5(ubound(a2,dim=2))
      character*(j1)::b6(size  (a1,dim=1))
      character*(j1)::b7(size  (a2      ))
      character*(j1)::b8(ubound(a1//a1,dim=1))
      character*(j1)::b9(ubound(a2//a2,dim=1))
      character*(j1)::ba(ubound(a2//a2,dim=2))
      character*(j1)::bb(ubound(a1(:)(:)//a1(:)(:),dim=1))
      character*(j1)::bc(ubound(a2(:,:)(:)//a2(:,:)(:),dim=1))
      character*(j1)::bd(ubound(a2(:,:)(:)//a2(:,:)(:),dim=2))
      character*(j1)::be(0:lbound(a1,dim=1))
      character*(j1)::bf(0:lbound(a2,dim=1))
      character*(j1)::bg(0:lbound(a2,dim=2))
      character*(j1)::bh(0:lbound(a1//a1,dim=1))
      character*(j1)::bi(0:lbound(a2//a2,dim=1))
      character*(j1)::bj(0:lbound(a2//a2,dim=2))
      character*(j1)::bk(0:lbound(a1(:)(:)//a1(:)(:),dim=1))
      character*(j1)::bl(0:lbound(a2(:,:)(:)//a2(:,:)(:),dim=1))
      character*(j1)::bm(0:lbound(a2(:,:)(:)//a2(:,:)(:),dim=2))
      character*(*) c,d(*)
      if (size(b3)/=3)print *,'fail';if (ubound(b3,1)/=3)print *,'fail'
      if (size(b4)/=4)print *,'fail';if (ubound(b4,1)/=4)print *,'fail'
      if (size(b5)/=3)print *,'fail';if (ubound(b5,1)/=3)print *,'fail'
      if (size(b6)/=2)print *,'fail';if (ubound(b6,1)/=2)print *,'fail'
      if (size(b7)/=6)print *,'fail';if (ubound(b7,1)/=6)print *,'fail'
      if (size(b8)/=2)print *,'fail';if (ubound(b8,1)/=2)print *,'fail'
      if (size(b9)/=3)print *,'fail';if (ubound(b9,1)/=3)print *,'fail'
      if (size(ba)/=2)print *,'fail';if (ubound(ba,1)/=2)print *,'fail'
      if (size(bb)/=2)print *,'fail';if (ubound(bb,1)/=2)print *,'fail'
      if (size(bc)/=3)print *,'fail';if (ubound(bc,1)/=3)print *,'fail'
      if (size(bd)/=2)print *,'fail';if (ubound(bd,1)/=2)print *,'fail'
      if (size(be)/=3)print *,'fail';if (ubound(be,1)/=2)print *,'fail'
      if (size(bf)/=3)print *,'fail';if (ubound(bf,1)/=2)print *,'fail'
      if (size(bg)/=3)print *,'fail';if (ubound(bg,1)/=2)print *,'fail'
      if (size(bh)/=2)print *,'fail';if (ubound(bh,1)/=1)print *,'fail'
      if (size(bi)/=2)print *,'fail';if (ubound(bi,1)/=1)print *,'fail'
      if (size(bj)/=2)print *,'fail';if (ubound(bj,1)/=1)print *,'fail'
      if (size(bk)/=2)print *,'fail';if (ubound(bk,1)/=1)print *,'fail'
      if (size(bl)/=2)print *,'fail';if (ubound(bl,1)/=1)print *,'fail'
      if (size(bm)/=2)print *,'fail';if (ubound(bm,1)/=1)print *,'fail'
      if(lbound(a1,1)/=2)print *,'fail'
      if(lbound(a2,1)/=2)print *,'fail'
      if(lbound(a2,2)/=2)print *,'fail'
      if(ubound(a1,1)/=3)print *,'fail'
      if(ubound(a2,1)/=4)print *,'fail'
      if(ubound(a2,2)/=3)print *,'fail'
      if(size(a1)/=2)print *,'fail'; if(size(a2)/=6)print *,'fail'
      if(any(a1/=(/d(1),d(2)/)))print *,'fail'
      if(any(a2/= reshape(
     1   (/(char(i),i=ichar(c),ichar(c)+5)/),(/3,2/))))print *,'fail'
      end subroutine
