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
      complex(kind=8),parameter:: cd_ps=(1e0_8,2e0_8)
      complex(kind=8),dimension(2),parameter::
     1 cd_pa=(/(3e0_8,4e0_8),(5e0_8,6e0_8) /)
      complex(kind= 4),parameter:: c8_ps=(1e0_4,2e0_4)
      complex(kind= 4),dimension(2),parameter::
     1 c8_pa=(/(3e0_4,4e0_4),(5e0_4,6e0_4) /)
      real   (kind=8) ,parameter:: r8_ps=1e0_8
      real   (kind=8) ,dimension(2),parameter::
     1 r8_pa=(/ 3e0_8 , 5e0_8 /)
      real   (kind=4) ,parameter:: r4_ps=1e0_4
      real   (kind=4) ,dimension(2),parameter::
     1 r4_pa=(/ 3e0_4 , 5e0_4 /)
      integer(kind=4) ,parameter:: i4_ps=1
      integer(kind=4) ,dimension(2),parameter:: i4_pa=(/ 3 , 5 /)
      integer(kind=2) ,parameter:: i2_ps=1_2
      integer(kind=2) ,dimension(2),parameter:: i2_pa=(/ 3_2 , 5_2 /)
      integer(kind=1) ,parameter:: i1_ps=1_1
      integer(kind=1) ,dimension(2),parameter:: i1_pa=(/ 3_1 , 5_1 /)
      logical(kind=4) ,parameter:: l4_ps=.true._4
      logical(kind=4) ,dimension(2),parameter:: l4_pa=(/.true.,.false./)
      logical(kind=1) ,parameter:: l1_ps=.true._1
      logical(kind=1) ,dimension(2),parameter::
     1 l1_pa=(/.true._1,.false._1/)
      character(kind=1,len=5),parameter:: ch5_ps=1_'12345'
      character(kind=1,len=5),dimension(2),parameter::
     1 ch5_pa=(/ 1_'abcde', 1_'fghij' /)
      type (cd),parameter::cd01=cd( cd_ps ,cd_pa )
      type (c8),parameter::c801=c8( c8_ps ,c8_pa )
      type (r8),parameter::r801=r8( r8_ps ,r8_pa )
      type (r4),parameter::r401=r4( r4_ps ,r4_pa )
      type (i4),parameter::i401=i4( i4_ps ,i4_pa )
      type (l4),parameter::l401=l4( l4_ps ,l4_pa )
      type (i2),parameter::i201=i2( i2_ps ,i2_pa )
      type (i1),parameter::i101=i1( i1_ps ,i1_pa )
      type (l1),parameter::l101=l1( l1_ps ,l1_pa )
      type (ch5),parameter::ch501=ch5( ch5_ps ,ch5_pa )
      if (cd01%cd_s/=cd_ps)print *,'fail'
      if (cd01%cd_a(1)/=cd_pa(1).or.cd01%cd_a(2)/=cd_pa(2))
     1 print *,'fail'
      if (c801%c8_s/=c8_ps)print *,'fail'
      if (c801%c8_a(1)/=c8_pa(1).or.c801%c8_a(2)/=c8_pa(2))
     1 print *,'fail'
      if (r801%r8_s/=r8_ps)print *,'fail'
      if (r801%r8_a(1)/=r8_pa(1).or.r801%r8_a(2)/=r8_pa(2))
     1 print *,'fail'
      if (r401%r4_s/=r4_ps)print *,'fail'
      if (r401%r4_a(1)/=r4_pa(1).or.r401%r4_a(2)/=r4_pa(2))
     1 print *,'fail'
      if (i401%i4_s/=i4_ps)print *,'fail'
      if (i401%i4_a(1)/=i4_pa(1).or.i401%i4_a(2)/=i4_pa(2))
     1 print *,'fail'
      if (l401%l4_s.neqv.l4_ps)print *,'fail'
      if ((l401%l4_a(1).neqv.l4_pa(1)).or.
     1    (l401%l4_a(2).neqv.l4_pa(2)))print *,'fail'
      if (i201%i2_s/=i2_ps)print *,'fail'
      if (i201%i2_a(1)/=i2_pa(1).or.i201%i2_a(2)/=i2_pa(2))
     1 print *,'fail'
      if (i101%i1_s/=i1_ps)print *,'fail'
      if (i101%i1_a(1)/=i1_pa(1).or.i101%i1_a(2)/=i1_pa(2))
     1 print *,'fail'
      if ((l101%l1_a(1).neqv.l1_pa(1)).or.
     1    (l101%l1_a(2).neqv.l1_pa(2)))print *,'fail'
      if (ch501%ch5_s/=ch5_ps)print *,'fail'
      if (ch501%ch5_a(1)/=ch5_pa(1).or.
     1    ch501%ch5_a(2)/=ch5_pa(2))print *,'fail'
      end
