c
c ow =g1128
c
      call s1
      print *,'pass'
      end
      subroutine s1
      type cd
        complex(kind=8):: cd_s
        complex(kind=8),dimension(2):: cd_a
      end type cd
      type c8
        complex(kind=4)::  c8_s
        complex(kind=4) ,dimension(2):: c8_a
      end type c8
      type r8
        real   (kind=8)::  r8_s
        real   (kind=8) ,dimension(2):: r8_a
      end type r8
      type r4
        real   (kind=4)::  r4_s
        real   (kind=4) ,dimension(2):: r4_a
      end type
      type i4
        integer(kind=4)::  i4_s
        integer(kind=4) ,dimension(2):: i4_a
      end type
      type l4
        logical(kind=4)::  l4_s
        logical(kind=4) ,dimension(2)::  l4_a
      end type
      type i2
        integer(kind=2)::  i2_s
        integer(kind=2) ,dimension(2)::  i2_a
      end type
      type i1
        integer(kind=1)::  i1_s
        integer(kind=1) ,dimension(2)::  i1_a
      end type
      type l1
        logical(kind=1)::  l1_s
        logical(kind=1) ,dimension(2)::  l1_a
      end type
      type ch5
        character(kind=1,len=5) ch5_s
        character(kind=1,len=5) ,dimension(2) ::ch5_a
      end type
      type st
        type(cd)::stcd_s,stcd_a(2)
        type(c8)::stc8_s,stc8_a(2)
        type(r8)::str8_s,str8_a(2)
        type(r4)::str4_s,str4_a(2)
        type(i4)::sti4_s,sti4_a(2)
        type(l4)::stl4_s,stl4_a(2)
        type(i2)::sti2_s,sti2_a(2)
        type(i1)::sti1_s,sti1_a(2)
        type(l1)::stl1_s,stl1_a(2)
        type(ch5)::stch5_s,stch5_a(2)
      end type
      complex(kind=8),parameter:: cd_ps=(1e0_8,2e0_8)
      complex(kind=8),dimension(2),parameter::
     1 cd_pa=(/(3e0_8,4e0_8),(5e0_8,6e0_8) /)
      complex(kind= 4),parameter:: c8_ps=(7e0_4,8e0_4)
      complex(kind= 4),dimension(2),parameter::
     1 c8_pa=(/(9e0_4,10e0_4),(11e0_4,12e0_4) /)
      real   (kind=8) ,parameter:: r8_ps=13e0_8
      real   (kind=8) ,dimension(2),parameter::
     1 r8_pa=(/ 14e0_8 , 15e0_8 /)
      real   (kind=4) ,parameter:: r4_ps=16e0_4
      real   (kind=4) ,dimension(2),parameter::
     1 r4_pa=(/ 17e0_4 , 18e0_4 /)
      integer(kind=4) ,parameter:: i4_ps=19
      integer(kind=4) ,dimension(2),parameter:: i4_pa=(/ 20 , 21 /)
      integer(kind=2) ,parameter:: i2_ps=22_2
      integer(kind=2) ,dimension(2),parameter:: i2_pa=(/ 23_2 , 24_2 /)
      integer(kind=1) ,parameter:: i1_ps=25_1
      integer(kind=1) ,dimension(2),parameter:: i1_pa=(/ 26_1 , 27_1 /)
      logical(kind=4) ,parameter:: l4_ps=.true._4
      logical(kind=4) ,dimension(2),parameter:: l4_pa=(/.true.,.false./)
      logical(kind=1) ,parameter:: l1_ps=.false._1
      logical(kind=1) ,dimension(2),parameter::
     1 l1_pa=(/.false._1,.true._1/)
      character(kind=1,len=5),parameter:: ch5_ps=1_'12345'
      character(kind=1,len=5),dimension(2),parameter::
     1 ch5_pa=(/ 1_'abcde', 1_'fghij' /)
      type (cd),parameter::cdcd=cd( cd_ps ,cd_pa )
      type (cd),parameter::cdc8=cd( c8_ps ,c8_pa )
      type (cd),parameter::cdr8=cd( r8_ps ,r8_pa )
      type (cd),parameter::cdr4=cd( r4_ps ,r4_pa )
      type (cd),parameter::cdi4=cd( i4_ps ,i4_pa )
      type (cd),parameter::cdi2=cd( i2_ps ,i2_pa )
      type (cd),parameter::cdi1=cd( i1_ps ,i1_pa )
      type (c8),parameter::c8cd=c8( cd_ps ,cd_pa )
      type (c8),parameter::c8c8=c8( c8_ps ,c8_pa )
      type (c8),parameter::c8r8=c8( r8_ps ,r8_pa )
      type (c8),parameter::c8r4=c8( r4_ps ,r4_pa )
      type (c8),parameter::c8i4=c8( i4_ps ,i4_pa )
      type (c8),parameter::c8i2=c8( i2_ps ,i2_pa )
      type (c8),parameter::c8i1=c8( i1_ps ,i1_pa )
      type (r8),parameter::r8cd=r8( cd_ps ,cd_pa )
      type (r8),parameter::r8c8=r8( c8_ps ,c8_pa )
      type (r8),parameter::r8r8=r8( r8_ps ,r8_pa )
      type (r8),parameter::r8r4=r8( r4_ps ,r4_pa )
      type (r8),parameter::r8i4=r8( i4_ps ,i4_pa )
      type (r8),parameter::r8i2=r8( i2_ps ,i2_pa )
      type (r8),parameter::r8i1=r8( i1_ps ,i1_pa )
      type (r4),parameter::r4cd=r4( cd_ps ,cd_pa )
      type (r4),parameter::r4c8=r4( c8_ps ,c8_pa )
      type (r4),parameter::r4r8=r4( r8_ps ,r8_pa )
      type (r4),parameter::r4r4=r4( r4_ps ,r4_pa )
      type (r4),parameter::r4i4=r4( i4_ps ,i4_pa )
      type (r4),parameter::r4i2=r4( i2_ps ,i2_pa )
      type (r4),parameter::r4i1=r4( i1_ps ,i1_pa )
      type (i4),parameter::i4cd=i4( cd_ps ,cd_pa )
      type (i4),parameter::i4c8=i4( c8_ps ,c8_pa )
      type (i4),parameter::i4r8=i4( r8_ps ,r8_pa )
      type (i4),parameter::i4r4=i4( r4_ps ,r4_pa )
      type (i4),parameter::i4i4=i4( i4_ps ,i4_pa )
      type (i4),parameter::i4i2=i4( i2_ps ,i2_pa )
      type (i4),parameter::i4i1=i4( i1_ps ,i1_pa )
      type (l4),parameter::l4l4=l4( l4_ps ,l4_pa )
      type (l4),parameter::l4l1=l4( l1_ps ,l1_pa )
      type (i2),parameter::i2cd=i2( cd_ps ,cd_pa )
      type (i2),parameter::i2c8=i2( c8_ps ,c8_pa )
      type (i2),parameter::i2r8=i2( r8_ps ,r8_pa )
      type (i2),parameter::i2r4=i2( r4_ps ,r4_pa )
      type (i2),parameter::i2i4=i2( i4_ps ,i4_pa )
      type (i2),parameter::i2i2=i2( i2_ps ,i2_pa )
      type (i2),parameter::i2i1=i2( i1_ps ,i1_pa )
      type (i1),parameter::i1cd=i1( cd_ps ,cd_pa )
      type (i1),parameter::i1c8=i1( c8_ps ,c8_pa )
      type (i1),parameter::i1r8=i1( r8_ps ,r8_pa )
      type (i1),parameter::i1r4=i1( r4_ps ,r4_pa )
      type (i1),parameter::i1i4=i1( i4_ps ,i4_pa )
      type (i1),parameter::i1i2=i1( i2_ps ,i2_pa )
      type (i1),parameter::i1i1=i1( i1_ps ,i1_pa )
      type (l1),parameter::l1l1=l1( l1_ps ,l1_pa )
      type (l1),parameter::l1l4=l1( l4_ps ,l4_pa )
      type (ch5),parameter::ch501=ch5( ch5_ps ,ch5_pa )
      type (ch5),parameter::ch502=ch5( ch5_ps(2:4) , ch5_pa(:)(2:4) )
      type (ch5),parameter::ch503=ch5( 'x'//ch5_ps , 'x'//ch5_pa )
      type (st),parameter::stst=st(
     1 cdcd , (/ (cdcd , n=1,2) /) ,
     1 c8c8 , (/ (c8c8 , n=1,2) /) ,
     1 r8r8 , (/ (r8r8 , n=1,2) /) ,
     1 r4r4 , (/ (r4r4 , n=1,2) /) ,
     1 i4i4 , (/ (i4i4 , n=1,2) /) ,
     1 l4l4 , (/ (l4l4 , n=1,2) /) ,
     1 i2i2 , (/ (i2i2 , n=1,2) /) ,
     1 i1i1 , (/ (i1i1 , n=1,2) /) ,
     1 l1l1 , (/ (l1l1 , n=1,2) /) ,
     1 ch501 , (/ (ch501 , n=1,2) /) )

      if (cdcd%cd_s   /=cmplx(cd_ps   ,kind=8))print *,'fail'
      if (cdcd%cd_a(1)/=cmplx(cd_pa(1),kind=8).or.
     1    cdcd%cd_a(2)/=cmplx(cd_pa(2),kind=8))print *,'fail'
      if (cdc8%cd_s   /=cmplx(c8_ps   ,kind=8))print *,'fail'
      if (cdc8%cd_a(1)/=cmplx(c8_pa(1),kind=8).or.
     1    cdc8%cd_a(2)/=cmplx(c8_pa(2),kind=8))print *,'fail'
      if (cdr8%cd_s   /=cmplx(r8_ps   ,kind=8))print *,'fail'
      if (cdr8%cd_a(1)/=cmplx(r8_pa(1),kind=8).or.
     1    cdr8%cd_a(2)/=cmplx(r8_pa(2),kind=8))print *,'fail'
      if (cdr4%cd_s   /=cmplx(r4_ps   ,kind=8))print *,'fail'
      if (cdr4%cd_a(1)/=cmplx(r4_pa(1),kind=8).or.
     1    cdr4%cd_a(2)/=cmplx(r4_pa(2),kind=8))print *,'fail'
      if (cdi4%cd_s   /=cmplx(i4_ps   ,kind=8))print *,'fail'
      if (cdi4%cd_a(1)/=cmplx(i4_pa(1),kind=8).or.
     1    cdi4%cd_a(2)/=cmplx(i4_pa(2),kind=8))print *,'fail'
      if (cdi2%cd_s   /=cmplx(i2_ps   ,kind=8))print *,'fail'
      if (cdi2%cd_a(1)/=cmplx(i2_pa(1),kind=8).or.
     1    cdi2%cd_a(2)/=cmplx(i2_pa(2),kind=8))print *,'fail'
      if (cdi1%cd_s   /=cmplx(i1_ps   ,kind=8))print *,'fail'
      if (cdi1%cd_a(1)/=cmplx(i1_pa(1),kind=8).or.
     1    cdi1%cd_a(2)/=cmplx(i1_pa(2),kind=8))print *,'fail'
c
      if (c8cd%c8_s   /=cmplx(cd_ps   ,kind=4))print *,'fail'
      if (c8cd%c8_a(1)/=cmplx(cd_pa(1),kind=4).or.
     1    c8cd%c8_a(2)/=cmplx(cd_pa(2),kind=4))print *,'fail'
      if (c8c8%c8_s   /=cmplx(c8_ps   ,kind=4))print *,'fail'
      if (c8c8%c8_a(1)/=cmplx(c8_pa(1),kind=4).or.
     1    c8c8%c8_a(2)/=cmplx(c8_pa(2),kind=4))print *,'fail'
      if (c8r8%c8_s   /=cmplx(r8_ps   ,kind=4))print *,'fail'
      if (c8r8%c8_a(1)/=cmplx(r8_pa(1),kind=4).or.
     1    c8r8%c8_a(2)/=cmplx(r8_pa(2),kind=4))print *,'fail'
      if (c8r4%c8_s   /=cmplx(r4_ps   ,kind=4))print *,'fail'
      if (c8r4%c8_a(1)/=cmplx(r4_pa(1),kind=4).or.
     1    c8r4%c8_a(2)/=cmplx(r4_pa(2),kind=4))print *,'fail'
      if (c8i4%c8_s   /=cmplx(i4_ps   ,kind=4))print *,'fail'
      if (c8i4%c8_a(1)/=cmplx(i4_pa(1),kind=4).or.
     1    c8i4%c8_a(2)/=cmplx(i4_pa(2),kind=4))print *,'fail'
      if (c8i2%c8_s   /=cmplx(i2_ps   ,kind=4))print *,'fail'
      if (c8i2%c8_a(1)/=cmplx(i2_pa(1),kind=4).or.
     1    c8i2%c8_a(2)/=cmplx(i2_pa(2),kind=4))print *,'fail'
      if (c8i1%c8_s   /=cmplx(i1_ps   ,kind=4))print *,'fail'
      if (c8i1%c8_a(1)/=cmplx(i1_pa(1),kind=4).or.
     1    c8i1%c8_a(2)/=cmplx(i1_pa(2),kind=4))print *,'fail'
c
      if (r8cd%r8_s   /=real(cd_ps   ,kind=8))print *,'fail'
      if (r8cd%r8_a(1)/=real(cd_pa(1),kind=8).or.
     1    r8cd%r8_a(2)/=real(cd_pa(2),kind=8))print *,'fail'
      if (r8c8%r8_s   /=real(c8_ps   ,kind=8))print *,'fail'
      if (r8c8%r8_a(1)/=real(c8_pa(1),kind=8).or.
     1    r8c8%r8_a(2)/=real(c8_pa(2),kind=8))print *,'fail'
      if (r8r8%r8_s   /=real(r8_ps   ,kind=8))print *,'fail'
      if (r8r8%r8_a(1)/=real(r8_pa(1),kind=8).or.
     1    r8r8%r8_a(2)/=real(r8_pa(2),kind=8))print *,'fail'
      if (r8r4%r8_s   /=real(r4_ps   ,kind=8))print *,'fail'
      if (r8r4%r8_a(1)/=real(r4_pa(1),kind=8).or.
     1    r8r4%r8_a(2)/=real(r4_pa(2),kind=8))print *,'fail'
      if (r8i4%r8_s   /=real(i4_ps   ,kind=8))print *,'fail'
      if (r8i4%r8_a(1)/=real(i4_pa(1),kind=8).or.
     1    r8i4%r8_a(2)/=real(i4_pa(2),kind=8))print *,'fail'
      if (r8i2%r8_s   /=real(i2_ps   ,kind=8))print *,'fail'
      if (r8i2%r8_a(1)/=real(i2_pa(1),kind=8).or.
     1    r8i2%r8_a(2)/=real(i2_pa(2),kind=8))print *,'fail'
      if (r8i1%r8_s   /=real(i1_ps   ,kind=8))print *,'fail'
      if (r8i1%r8_a(1)/=real(i1_pa(1),kind=8).or.
     1    r8i1%r8_a(2)/=real(i1_pa(2),kind=8))print *,'fail'
c
      if (r4cd%r4_s   /=real(cd_ps   ,kind=4))print *,'fail'
      if (r4cd%r4_a(1)/=real(cd_pa(1),kind=4).or.
     1    r4cd%r4_a(2)/=real(cd_pa(2),kind=4))print *,'fail'
      if (r4c8%r4_s   /=real(c8_ps   ,kind=4))print *,'fail'
      if (r4c8%r4_a(1)/=real(c8_pa(1),kind=4).or.
     1    r4c8%r4_a(2)/=real(c8_pa(2),kind=4))print *,'fail'
      if (r4r8%r4_s   /=real(r8_ps   ,kind=4))print *,'fail'
      if (r4r8%r4_a(1)/=real(r8_pa(1),kind=4).or.
     1    r4r8%r4_a(2)/=real(r8_pa(2),kind=4))print *,'fail'
      if (r4r4%r4_s   /=real(r4_ps   ,kind=4))print *,'fail'
      if (r4r4%r4_a(1)/=real(r4_pa(1),kind=4).or.
     1    r4r4%r4_a(2)/=real(r4_pa(2),kind=4))print *,'fail'
      if (r4i4%r4_s   /=real(i4_ps   ,kind=4))print *,'fail'
      if (r4i4%r4_a(1)/=real(i4_pa(1),kind=4).or.
     1    r4i4%r4_a(2)/=real(i4_pa(2),kind=4))print *,'fail'
      if (r4i2%r4_s   /=real(i2_ps   ,kind=4))print *,'fail'
      if (r4i2%r4_a(1)/=real(i2_pa(1),kind=4).or.
     1    r4i2%r4_a(2)/=real(i2_pa(2),kind=4))print *,'fail'
      if (r4i1%r4_s   /=real(i1_ps   ,kind=4))print *,'fail'
      if (r4i1%r4_a(1)/=real(i1_pa(1),kind=4).or.
     1    r4i1%r4_a(2)/=real(i1_pa(2),kind=4))print *,'fail'
c
      if (i4cd%i4_s   /=int(cd_ps   ,kind=4))print *,'fail'
      if (i4cd%i4_a(1)/=int(cd_pa(1),kind=4).or.
     1    i4cd%i4_a(2)/=int(cd_pa(2),kind=4))print *,'fail'
      if (i4c8%i4_s   /=int(c8_ps   ,kind=4))print *,'fail'
      if (i4c8%i4_a(1)/=int(c8_pa(1),kind=4).or.
     1    i4c8%i4_a(2)/=int(c8_pa(2),kind=4))print *,'fail'
      if (i4r8%i4_s   /=int(r8_ps   ,kind=4))print *,'fail'
      if (i4r8%i4_a(1)/=int(r8_pa(1),kind=4).or.
     1    i4r8%i4_a(2)/=int(r8_pa(2),kind=4))print *,'fail'
      if (i4r4%i4_s   /=int(r4_ps   ,kind=4))print *,'fail'
      if (i4r4%i4_a(1)/=int(r4_pa(1),kind=4).or.
     1    i4r4%i4_a(2)/=int(r4_pa(2),kind=4))print *,'fail'
      if (i4i4%i4_s   /=int(i4_ps   ,kind=4))print *,'fail'
      if (i4i4%i4_a(1)/=int(i4_pa(1),kind=4).or.
     1    i4i4%i4_a(2)/=int(i4_pa(2),kind=4))print *,'fail'
      if (i4i2%i4_s   /=int(i2_ps   ,kind=4))print *,'fail'
      if (i4i2%i4_a(1)/=int(i2_pa(1),kind=4).or.
     1    i4i2%i4_a(2)/=int(i2_pa(2),kind=4))print *,'fail'
      if (i4i1%i4_s   /=int(i1_ps   ,kind=4))print *,'fail'
      if (i4i1%i4_a(1)/=int(i1_pa(1),kind=4).or.
     1    i4i1%i4_a(2)/=int(i1_pa(2),kind=4))print *,'fail'
c
      if (i2cd%i2_s   /=int(cd_ps   ,kind=2))print *,'fail'
      if (i2cd%i2_a(1)/=int(cd_pa(1),kind=2).or.
     1    i2cd%i2_a(2)/=int(cd_pa(2),kind=2))print *,'fail'
      if (i2c8%i2_s   /=int(c8_ps   ,kind=2))print *,'fail'
      if (i2c8%i2_a(1)/=int(c8_pa(1),kind=2).or.
     1    i2c8%i2_a(2)/=int(c8_pa(2),kind=2))print *,'fail'
      if (i2r8%i2_s   /=int(r8_ps   ,kind=2))print *,'fail'
      if (i2r8%i2_a(1)/=int(r8_pa(1),kind=2).or.
     1    i2r8%i2_a(2)/=int(r8_pa(2),kind=2))print *,'fail'
      if (i2r4%i2_s   /=int(r4_ps   ,kind=2))print *,'fail'
      if (i2r4%i2_a(1)/=int(r4_pa(1),kind=2).or.
     1    i2r4%i2_a(2)/=int(r4_pa(2),kind=2))print *,'fail'
      if (i2i4%i2_s   /=int(i4_ps   ,kind=2))print *,'fail'
      if (i2i4%i2_a(1)/=int(i4_pa(1),kind=2).or.
     1    i2i4%i2_a(2)/=int(i4_pa(2),kind=2))print *,'fail'
      if (i2i2%i2_s   /=int(i2_ps   ,kind=2))print *,'fail'
      if (i2i2%i2_a(1)/=int(i2_pa(1),kind=2).or.
     1    i2i2%i2_a(2)/=int(i2_pa(2),kind=2))print *,'fail'
      if (i2i1%i2_s   /=int(i1_ps   ,kind=2))print *,'fail'
      if (i2i1%i2_a(1)/=int(i1_pa(1),kind=2).or.
     1    i2i1%i2_a(2)/=int(i1_pa(2),kind=2))print *,'fail'
c
      if (i1cd%i1_s   /=int(cd_ps   ,kind=1))print *,'fail'
      if (i1cd%i1_a(1)/=int(cd_pa(1),kind=1).or.
     1    i1cd%i1_a(2)/=int(cd_pa(2),kind=1))print *,'fail'
      if (i1c8%i1_s   /=int(c8_ps   ,kind=1))print *,'fail'
      if (i1c8%i1_a(1)/=int(c8_pa(1),kind=1).or.
     1    i1c8%i1_a(2)/=int(c8_pa(2),kind=1))print *,'fail'
      if (i1r8%i1_s   /=int(r8_ps   ,kind=1))print *,'fail'
      if (i1r8%i1_a(1)/=int(r8_pa(1),kind=1).or.
     1    i1r8%i1_a(2)/=int(r8_pa(2),kind=1))print *,'fail'
      if (i1r4%i1_s   /=int(r4_ps   ,kind=1))print *,'fail'
      if (i1r4%i1_a(1)/=int(r4_pa(1),kind=1).or.
     1    i1r4%i1_a(2)/=int(r4_pa(2),kind=1))print *,'fail'
      if (i1i4%i1_s   /=int(i4_ps   ,kind=1))print *,'fail'
      if (i1i4%i1_a(1)/=int(i4_pa(1),kind=1).or.
     1    i1i4%i1_a(2)/=int(i4_pa(2),kind=1))print *,'fail'
      if (i1i2%i1_s   /=int(i2_ps   ,kind=1))print *,'fail'
      if (i1i2%i1_a(1)/=int(i2_pa(1),kind=1).or.
     1    i1i2%i1_a(2)/=int(i2_pa(2),kind=1))print *,'fail'
      if (i1i1%i1_s   /=int(i1_ps   ,kind=1))print *,'fail'
      if (i1i1%i1_a(1)/=int(i1_pa(1),kind=1).or.
     1    i1i1%i1_a(2)/=int(i1_pa(2),kind=1))print *,'fail'
      if ( l4l4%l4_s   .neqv.logical(l4_ps   ,kind=4))print *,'fail'
      if ((l4l4%l4_a(1).neqv.logical(l4_pa(1),kind=4)).or.
     1    (l4l4%l4_a(2).neqv.logical(l4_pa(2),kind=4)))print *,'fail'
      if ( l4l1%l4_s   .neqv.logical(l1_ps   ,kind=1))print *,'fail'
      if ((l4l1%l4_a(1).neqv.logical(l1_pa(1),kind=1)).or.
     1    (l4l1%l4_a(2).neqv.logical(l1_pa(2),kind=1)))print *,'fail'
c
      if ( l1l4%l1_s   .neqv.l4_ps    )print *,'fail'
      if ((l1l4%l1_a(1).neqv.l4_pa(1)).or.
     1    (l1l4%l1_a(2).neqv.l4_pa(2)))print *,'fail'
      if ( l1l1%l1_s   .neqv.l1_ps    )print *,'fail'
      if ((l1l1%l1_a(1).neqv.l1_pa(1)).or.
     1    (l1l1%l1_a(2).neqv.l1_pa(2)))print *,'fail'
      if (ch501%ch5_s   /=ch5_ps)print *,'fail'
      if (ch501%ch5_a(1)/=ch5_pa(1).or.
     1    ch501%ch5_a(2)/=ch5_pa(2))print *,'fail'
      if (ch502%ch5_s   /=ch5_ps(2:4))print *,'fail'
      if (ch502%ch5_a(1)/=ch5_pa(1)(2:4).or.
     1    ch502%ch5_a(2)/=ch5_pa(2)(2:4))print *,'fail'
      if (ch503%ch5_s   /='x'//ch5_ps(:4))print *,'fail'
      if (ch503%ch5_a(1)/='x'//ch5_pa(1)(:4).or.
     1    ch503%ch5_a(2)/='x'//ch5_pa(2)(:4))print *,'fail'
      if (len(ch501%ch5_s)/=5 .or. len(ch5_ps)/=5)print *,'fail'
      if (len(ch501%ch5_a(1))/=5 .or. len(ch5_pa(1))/=5 .or.
     1    len(ch501%ch5_a(2))/=5 .or. len(ch5_pa(2))/=5 )print *,'fail'
      if (len(ch502%ch5_s   )/=5 .or. len(ch5_ps(2:4))/=3)print *,'fail'
      if (len(ch502%ch5_a(1))/=5 .or. len(ch5_pa(1)(2:4))/=3 .or.
     1    len(ch502%ch5_a(2))/=5 .or. len(ch5_pa(2)(2:4))/=3)
     1 print *,'fail'
      if (len(ch503%ch5_s   )/=5.or.len('x'//ch5_ps(:4))/=5)
     1 print *,'fail'
      if (len(ch503%ch5_a(1))/=5.or.len('x'//ch5_pa(1)(:4))/=5.or.
     1    len(ch503%ch5_a(2))/=5.or.len('x'//ch5_pa(2)(:4))/=5)
     1  print *,'fail'

      if (stst%stcd_s   %cd_s   /=cmplx(cd_ps   ,kind=8))print *,'fail'
      if (stst%stcd_a(1)%cd_s   /=cmplx(cd_ps   ,kind=8))print *,'fail'
      if (stst%stcd_a(2)%cd_s   /=cmplx(cd_ps   ,kind=8))print *,'fail'
      if (stst%stcd_s   %cd_a(1)/=cmplx(cd_pa(1),kind=8))print *,'fail'
      if (stst%stcd_a(1)%cd_a(1)/=cmplx(cd_pa(1),kind=8))print *,'fail'
      if (stst%stcd_a(2)%cd_a(1)/=cmplx(cd_pa(1),kind=8))print *,'fail'
      if (stst%stcd_s   %cd_a(2)/=cmplx(cd_pa(2),kind=8))print *,'fail'
      if (stst%stcd_a(1)%cd_a(2)/=cmplx(cd_pa(2),kind=8))print *,'fail'
      if (stst%stcd_a(2)%cd_a(2)/=cmplx(cd_pa(2),kind=8))print *,'fail'
c
      if (stst%stc8_s   %c8_s   /=cmplx(c8_ps   ,kind=4))print *,'fail'
      if (stst%stc8_a(1)%c8_s   /=cmplx(c8_ps   ,kind=4))print *,'fail'
      if (stst%stc8_a(2)%c8_s   /=cmplx(c8_ps   ,kind=4))print *,'fail'
      if (stst%stc8_s   %c8_a(1)/=cmplx(c8_pa(1),kind=4))print *,'fail'
      if (stst%stc8_a(1)%c8_a(1)/=cmplx(c8_pa(1),kind=4))print *,'fail'
      if (stst%stc8_a(2)%c8_a(1)/=cmplx(c8_pa(1),kind=4))print *,'fail'
      if (stst%stc8_s   %c8_a(2)/=cmplx(c8_pa(2),kind=4))print *,'fail'
      if (stst%stc8_a(1)%c8_a(2)/=cmplx(c8_pa(2),kind=4))print *,'fail'
      if (stst%stc8_a(2)%c8_a(2)/=cmplx(c8_pa(2),kind=4))print *,'fail'
c
      if (stst%str8_s   %r8_s   /=real(r8_ps   ,kind=8))print *,'fail'
      if (stst%str8_a(1)%r8_s   /=real(r8_ps   ,kind=8))print *,'fail'
      if (stst%str8_a(2)%r8_s   /=real(r8_ps   ,kind=8))print *,'fail'
      if (stst%str8_s   %r8_a(1)/=real(r8_pa(1),kind=8))print *,'fail'
      if (stst%str8_a(1)%r8_a(1)/=real(r8_pa(1),kind=8))print *,'fail'
      if (stst%str8_a(2)%r8_a(1)/=real(r8_pa(1),kind=8))print *,'fail'
      if (stst%str8_s   %r8_a(2)/=real(r8_pa(2),kind=8))print *,'fail'
      if (stst%str8_a(1)%r8_a(2)/=real(r8_pa(2),kind=8))print *,'fail'
      if (stst%str8_a(2)%r8_a(2)/=real(r8_pa(2),kind=8))print *,'fail'
c
      if (stst%str4_s   %r4_s   /=real(r4_ps   ,kind=8))print *,'fail'
      if (stst%str4_a(1)%r4_s   /=real(r4_ps   ,kind=8))print *,'fail'
      if (stst%str4_a(2)%r4_s   /=real(r4_ps   ,kind=8))print *,'fail'
      if (stst%str4_s   %r4_a(1)/=real(r4_pa(1),kind=8))print *,'fail'
      if (stst%str4_a(1)%r4_a(1)/=real(r4_pa(1),kind=8))print *,'fail'
      if (stst%str4_a(2)%r4_a(1)/=real(r4_pa(1),kind=8))print *,'fail'
      if (stst%str4_s   %r4_a(2)/=real(r4_pa(2),kind=8))print *,'fail'
      if (stst%str4_a(1)%r4_a(2)/=real(r4_pa(2),kind=8))print *,'fail'
      if (stst%str4_a(2)%r4_a(2)/=real(r4_pa(2),kind=8))print *,'fail'
c
      if (stst%sti4_s   %i4_s   /=int(i4_ps   ,kind=4))print *,'fail'
      if (stst%sti4_a(1)%i4_s   /=int(i4_ps   ,kind=4))print *,'fail'
      if (stst%sti4_a(2)%i4_s   /=int(i4_ps   ,kind=4))print *,'fail'
      if (stst%sti4_s   %i4_a(1)/=int(i4_pa(1),kind=4))print *,'fail'
      if (stst%sti4_a(1)%i4_a(1)/=int(i4_pa(1),kind=4))print *,'fail'
      if (stst%sti4_a(2)%i4_a(1)/=int(i4_pa(1),kind=4))print *,'fail'
      if (stst%sti4_s   %i4_a(2)/=int(i4_pa(2),kind=4))print *,'fail'
      if (stst%sti4_a(1)%i4_a(2)/=int(i4_pa(2),kind=4))print *,'fail'
      if (stst%sti4_a(2)%i4_a(2)/=int(i4_pa(2),kind=4))print *,'fail'
c
      if (stst%sti2_s   %i2_s   /=int(i2_ps   ,kind=2))print *,'fail'
      if (stst%sti2_a(1)%i2_s   /=int(i2_ps   ,kind=2))print *,'fail'
      if (stst%sti2_a(2)%i2_s   /=int(i2_ps   ,kind=2))print *,'fail'
      if (stst%sti2_s   %i2_a(1)/=int(i2_pa(1),kind=2))print *,'fail'
      if (stst%sti2_a(1)%i2_a(1)/=int(i2_pa(1),kind=2))print *,'fail'
      if (stst%sti2_a(2)%i2_a(1)/=int(i2_pa(1),kind=2))print *,'fail'
      if (stst%sti2_s   %i2_a(2)/=int(i2_pa(2),kind=2))print *,'fail'
      if (stst%sti2_a(1)%i2_a(2)/=int(i2_pa(2),kind=2))print *,'fail'
      if (stst%sti2_a(2)%i2_a(2)/=int(i2_pa(2),kind=2))print *,'fail'
c
      if (stst%sti1_s   %i1_s   /=int(i1_ps   ,kind=1))print *,'fail'
      if (stst%sti1_a(1)%i1_s   /=int(i1_ps   ,kind=1))print *,'fail'
      if (stst%sti1_a(2)%i1_s   /=int(i1_ps   ,kind=1))print *,'fail'
      if (stst%sti1_s   %i1_a(1)/=int(i1_pa(1),kind=1))print *,'fail'
      if (stst%sti1_a(1)%i1_a(1)/=int(i1_pa(1),kind=1))print *,'fail'
      if (stst%sti1_a(2)%i1_a(1)/=int(i1_pa(1),kind=1))print *,'fail'
      if (stst%sti1_s   %i1_a(2)/=int(i1_pa(2),kind=1))print *,'fail'
      if (stst%sti1_a(1)%i1_a(2)/=int(i1_pa(2),kind=1))print *,'fail'
      if (stst%sti1_a(2)%i1_a(2)/=int(i1_pa(2),kind=1))print *,'fail'
c
      if (stst%stl4_s   %l4_s   .neqv.
     1                     logical(l4_ps   ,kind=4))print *,'fail'
      if (stst%stl4_a(1)%l4_s   .neqv.
     1                     logical(l4_ps   ,kind=4))print *,'fail'
      if (stst%stl4_a(2)%l4_s   .neqv.
     1                     logical(l4_ps   ,kind=4))print *,'fail'
      if (stst%stl4_s   %l4_a(1).neqv.
     1                     logical(l4_pa(1),kind=4))print *,'fail'
      if (stst%stl4_a(1)%l4_a(1).neqv.
     1                     logical(l4_pa(1),kind=4))print *,'fail'
      if (stst%stl4_a(2)%l4_a(1).neqv.
     1                     logical(l4_pa(1),kind=4))print *,'fail'
      if (stst%stl4_s   %l4_a(2).neqv.
     1                     logical(l4_pa(2),kind=4))print *,'fail'
      if (stst%stl4_a(1)%l4_a(2).neqv.
     1                     logical(l4_pa(2),kind=4))print *,'fail'
      if (stst%stl4_a(2)%l4_a(2).neqv.
     1                     logical(l4_pa(2),kind=4))print *,'fail'
c
      if (stst%stl1_s   %l1_s   .neqv.
     1                     logical(l1_ps   ,kind=1))print *,'fail'
      if (stst%stl1_a(1)%l1_s   .neqv.
     1                     logical(l1_ps   ,kind=1))print *,'fail'
      if (stst%stl1_a(2)%l1_s   .neqv.
     1                     logical(l1_ps   ,kind=1))print *,'fail'
      if (stst%stl1_s   %l1_a(1).neqv.
     1                     logical(l1_pa(1),kind=1))print *,'fail'
      if (stst%stl1_a(1)%l1_a(1).neqv.
     1                     logical(l1_pa(1),kind=1))print *,'fail'
      if (stst%stl1_a(2)%l1_a(1).neqv.
     1                     logical(l1_pa(1),kind=1))print *,'fail'
      if (stst%stl1_s   %l1_a(2).neqv.
     1                     logical(l1_pa(2),kind=1))print *,'fail'
      if (stst%stl1_a(1)%l1_a(2).neqv.
     1                     logical(l1_pa(2),kind=1))print *,'fail'
      if (stst%stl1_a(2)%l1_a(2).neqv.
     1                     logical(l1_pa(2),kind=1))print *,'fail'
c
      if (stst%stch5_s   %ch5_s   /=ch5_ps)print *,'fail'
      if (stst%stch5_a(1)%ch5_s   /=ch5_ps)print *,'fail'
      if (stst%stch5_a(2)%ch5_s   /=ch5_ps)print *,'fail'
      if (stst%stch5_s   %ch5_a(1)/=ch5_pa(1))print *,'fail'
      if (stst%stch5_a(1)%ch5_a(1)/=ch5_pa(1))print *,'fail'
      if (stst%stch5_a(2)%ch5_a(1)/=ch5_pa(1))print *,'fail'
      if (stst%stch5_s   %ch5_a(2)/=ch5_pa(2))print *,'fail'
      if (stst%stch5_a(1)%ch5_a(2)/=ch5_pa(2))print *,'fail'
      if (stst%stch5_a(2)%ch5_a(2)/=ch5_pa(2))print *,'fail'
      end
