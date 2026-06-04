      call sub1
      call sub2
      call sub3
      call sub4
      print*,'pass'
      end
      subroutine sub1
      integer*1 ,parameter :: i1=2
      integer*2 ,parameter :: i2=2
      integer*4 ,parameter :: i4=2
      integer*8 ,parameter :: i8=2
      logical(2)        l01
      logical(kind=2)   l02
      logical(2)::      l03
      logical(kind=2):: l04
      logical(2),       l05
      logical(kind=2),  l06
      logical(i1)        l07
      logical(kind=i1)   l08
      logical(i1)::      l09
      logical(kind=i1):: l10
      logical(i1),       l11
      logical(kind=i1),  l12
      logical(i2)        l13
      logical(kind=i2)   l14
      logical(i2)::      l15
      logical(kind=i2):: l16
      logical(i2),       l17
      logical(kind=i2),  l18
      logical(i4)        l19
      logical(kind=i4)   l20
      logical(i4)::      l21
      logical(kind=i4):: l22
      logical(i4),       l23
      logical(kind=i4),  l24
      logical(i8)        l25
      logical(kind=i8)   l26
      logical(i8)::      l27
      logical(kind=i8):: l28
      logical(i8),       l29
      logical(kind=i8),  l30
      logical*2          l31
      logical*2,         l32
      l01=.true.; l02=.true.; l03=.true.;
      l04=.true.; l05=.true.; l06=.true.;
      l07=.true.; l08=.true.; l09=.true.;
      l10=.true.; l11=.true.; l12=.true.;
      l13=.true.; l14=.true.; l15=.true.;
      l16=.true.; l17=.true.; l18=.true.;
      l19=.true.; l20=.true.; l21=.true.;
      l22=.true.; l23=.true.; l24=.true.;
      l25=.true.; l26=.true.; l27=.true.;
      l28=.true.; l29=.true.; l30=.true.;
      l31=.true.; l32=.true.;
      if((l01.neqv..true.).or.(l02.neqv..true.).or.(l03.neqv..true.).or.
     &   (l04.neqv..true.).or.(l05.neqv..true.).or.(l06.neqv..true.).or.
     &   (l07.neqv..true.).or.(l08.neqv..true.).or.(l09.neqv..true.).or.
     &   (l10.neqv..true.).or.(l11.neqv..true.).or.(l12.neqv..true.).or.
     &   (l13.neqv..true.).or.(l14.neqv..true.).or.(l15.neqv..true.).or.
     &   (l16.neqv..true.).or.(l17.neqv..true.).or.(l18.neqv..true.).or.
     &   (l19.neqv..true.).or.(l20.neqv..true.).or.(l21.neqv..true.).or.
     &   (l22.neqv..true.).or.(l23.neqv..true.).or.(l24.neqv..true.).or.
     &   (l25.neqv..true.).or.(l26.neqv..true.).or.(l27.neqv..true.).or.
     &   (l28.neqv..true.).or.(l29.neqv..true.).or.(l30.neqv..true.).or.
     &   (l31.neqv..true.).or.(l32.neqv..true.) ) print *,'fail'
      end subroutine sub1

      subroutine sub2
      integer*1 ,parameter :: i1=8
      integer*2 ,parameter :: i2=8
      integer*4 ,parameter :: i4=8
      integer*8 ,parameter :: i8=8
      logical(8)        l01
      logical(kind=8)   l02
      logical(8)::      l03
      logical(kind=8):: l04
      logical(8),       l05
      logical(kind=8),  l06
      logical(i1)        l07
      logical(kind=i1)   l08
      logical(i1)::      l09
      logical(kind=i1):: l10
      logical(i1),       l11
      logical(kind=i1),  l12
      logical(i2)        l13
      logical(kind=i2)   l14
      logical(i2)::      l15
      logical(kind=i2):: l16
      logical(i2),       l17
      logical(kind=i2),  l18
      logical(i4)        l19
      logical(kind=i4)   l20
      logical(i4)::      l21
      logical(kind=i4):: l22
      logical(i4),       l23
      logical(kind=i4),  l24
      logical(i8)        l25
      logical(kind=i8)   l26
      logical(i8)::      l27
      logical(kind=i8):: l28
      logical(i8),       l29
      logical(kind=i8),  l30
      logical*8          l31
      logical*8,         l32
      l01=.true.; l02=.true.; l03=.true.;
      l04=.true.; l05=.true.; l06=.true.;
      l07=.true.; l08=.true.; l09=.true.;
      l10=.true.; l11=.true.; l12=.true.;
      l13=.true.; l14=.true.; l15=.true.;
      l16=.true.; l17=.true.; l18=.true.;
      l19=.true.; l20=.true.; l21=.true.;
      l22=.true.; l23=.true.; l24=.true.;
      l25=.true.; l26=.true.; l27=.true.;
      l28=.true.; l29=.true.; l30=.true.;
      l31=.true.; l32=.true.;
      if((l01.neqv..true.).or.(l02.neqv..true.).or.(l03.neqv..true.).or.
     &   (l04.neqv..true.).or.(l05.neqv..true.).or.(l06.neqv..true.).or.
     &   (l07.neqv..true.).or.(l08.neqv..true.).or.(l09.neqv..true.).or.
     &   (l10.neqv..true.).or.(l11.neqv..true.).or.(l12.neqv..true.).or.
     &   (l13.neqv..true.).or.(l14.neqv..true.).or.(l15.neqv..true.).or.
     &   (l16.neqv..true.).or.(l17.neqv..true.).or.(l18.neqv..true.).or.
     &   (l19.neqv..true.).or.(l20.neqv..true.).or.(l21.neqv..true.).or.
     &   (l22.neqv..true.).or.(l23.neqv..true.).or.(l24.neqv..true.).or.
     &   (l25.neqv..true.).or.(l26.neqv..true.).or.(l27.neqv..true.).or.
     &   (l28.neqv..true.).or.(l29.neqv..true.).or.(l30.neqv..true.).or.
     &   (l31.neqv..true.).or.(l32.neqv..true.) ) print *,'fail'
      end subroutine sub2

      subroutine sub3
      integer*1 ,parameter :: i1=2
      integer*2 ,parameter :: i2=2
      integer*4 ,parameter :: i4=2
      integer*8 ,parameter :: i8=2
      logical(2)        l01
      logical(kind=2)   l02
      logical(2)::      l03
      logical(kind=2):: l04
      logical(2),       l05
      logical(kind=2),  l06
      logical(i1)        l07
      logical(kind=i1)   l08
      logical(i1)::      l09
      logical(kind=i1):: l10
      logical(i1),       l11
      logical(kind=i1),  l12
      logical(i2)        l13
      logical(kind=i2)   l14
      logical(i2)::      l15
      logical(kind=i2):: l16
      logical(i2),       l17
      logical(kind=i2),  l18
      logical(i4)        l19
      logical(kind=i4)   l20
      logical(i4)::      l21
      logical(kind=i4):: l22
      logical(i4),       l23
      logical(kind=i4),  l24
      logical(i8)        l25
      logical(kind=i8)   l26
      logical(i8)::      l27
      logical(kind=i8):: l28
      logical(i8),       l29
      logical(kind=i8),  l30
      logical*2          l31
      logical*2,         l32
      l01=.true._1; l02=.true._1; l03=.true._1;
      l04=.true._2; l05=.true._2; l06=.true._2;
      l07=.true._4; l08=.true._4; l09=.true._4;
      l10=.true._8; l11=.true._8; l12=.true._8;
      l13=.true._1; l14=.true._1; l15=.true._1;
      l16=.true._2; l17=.true._2; l18=.true._2;
      l19=.true._4; l20=.true._4; l21=.true._4;
      l22=.true._8; l23=.true._8; l24=.true._8;
      l25=.true._1; l26=.true._1; l27=.true._1;
      l28=.true._2; l29=.true._2; l30=.true._2;
      l31=.true._4; l32=.true._4;
      if((l01.neqv..true.).or.(l02.neqv..true.).or.(l03.neqv..true.).or.
     &   (l04.neqv..true.).or.(l05.neqv..true.).or.(l06.neqv..true.).or.
     &   (l07.neqv..true.).or.(l08.neqv..true.).or.(l09.neqv..true.).or.
     &   (l10.neqv..true.).or.(l11.neqv..true.).or.(l12.neqv..true.).or.
     &   (l13.neqv..true.).or.(l14.neqv..true.).or.(l15.neqv..true.).or.
     &   (l16.neqv..true.).or.(l17.neqv..true.).or.(l18.neqv..true.).or.
     &   (l19.neqv..true.).or.(l20.neqv..true.).or.(l21.neqv..true.).or.
     &   (l22.neqv..true.).or.(l23.neqv..true.).or.(l24.neqv..true.).or.
     &   (l25.neqv..true.).or.(l26.neqv..true.).or.(l27.neqv..true.).or.
     &   (l28.neqv..true.).or.(l29.neqv..true.).or.(l30.neqv..true.).or.
     &   (l31.neqv..true.).or.(l32.neqv..true.) ) print *,'fail'
      end subroutine sub3

      subroutine sub4
      integer*1 ,parameter :: i1=8
      integer*2 ,parameter :: i2=8
      integer*4 ,parameter :: i4=8
      integer*8 ,parameter :: i8=8
      logical(8)        l01
      logical(kind=8)   l02
      logical(8)::      l03
      logical(kind=8):: l04
      logical(8),       l05
      logical(kind=8),  l06
      logical(i1)        l07
      logical(kind=i1)   l08
      logical(i1)::      l09
      logical(kind=i1):: l10
      logical(i1),       l11
      logical(kind=i1),  l12
      logical(i2)        l13
      logical(kind=i2)   l14
      logical(i2)::      l15
      logical(kind=i2):: l16
      logical(i2),       l17
      logical(kind=i2),  l18
      logical(i4)        l19
      logical(kind=i4)   l20
      logical(i4)::      l21
      logical(kind=i4):: l22
      logical(i4),       l23
      logical(kind=i4),  l24
      logical(i8)        l25
      logical(kind=i8)   l26
      logical(i8)::      l27
      logical(kind=i8):: l28
      logical(i8),       l29
      logical(kind=i8),  l30
      logical*8          l31
      logical*8,         l32
      l01=.true._1; l02=.true._1; l03=.true._1;
      l04=.true._2; l05=.true._2; l06=.true._2;
      l07=.true._4; l08=.true._4; l09=.true._4;
      l10=.true._8; l11=.true._8; l12=.true._8;
      l13=.true._1; l14=.true._1; l15=.true._1;
      l16=.true._2; l17=.true._2; l18=.true._2;
      l19=.true._4; l20=.true._4; l21=.true._4;
      l22=.true._8; l23=.true._8; l24=.true._8;
      l25=.true._1; l26=.true._1; l27=.true._1;
      l28=.true._2; l29=.true._2; l30=.true._2;
      l31=.true._4; l32=.true._4;
      if((l01.neqv..true.).or.(l02.neqv..true.).or.(l03.neqv..true.).or.
     &   (l04.neqv..true.).or.(l05.neqv..true.).or.(l06.neqv..true.).or.
     &   (l07.neqv..true.).or.(l08.neqv..true.).or.(l09.neqv..true.).or.
     &   (l10.neqv..true.).or.(l11.neqv..true.).or.(l12.neqv..true.).or.
     &   (l13.neqv..true.).or.(l14.neqv..true.).or.(l15.neqv..true.).or.
     &   (l16.neqv..true.).or.(l17.neqv..true.).or.(l18.neqv..true.).or.
     &   (l19.neqv..true.).or.(l20.neqv..true.).or.(l21.neqv..true.).or.
     &   (l22.neqv..true.).or.(l23.neqv..true.).or.(l24.neqv..true.).or.
     &   (l25.neqv..true.).or.(l26.neqv..true.).or.(l27.neqv..true.).or.
     &   (l28.neqv..true.).or.(l29.neqv..true.).or.(l30.neqv..true.).or.
     &   (l31.neqv..true.).or.(l32.neqv..true.) ) print *,'fail'
      end subroutine sub4
