#if defined(_WIN32) || defined(__i386) || defined(__x86_64__) || defined(__aarch64__)
      print*,'pass'
      end
#else
      call sub1
      call sub2
      call sub3
      call sub4
      call sub5
      call sub6
      call sub7
      call sub8
      call sub9
      call suba
      print*,'pass'
      end
      subroutine sub1
      logical*2 la(2)
      logical*1 lb
      logical*2 lc
      common/com1/lb,lc
      equivalence(la,lb)
      la(2)=.true.
      if(.not.lc)print *,'fail'
      end subroutine sub1
      subroutine sub2
      logical*2 la
      logical*4 lb
      logical*8 lc
      common/com2/la,lb
      equivalence(la,lc)
      lc=.true.
      if(.not.lb)print *,'fail'
      end subroutine sub2
      subroutine sub3
      logical*4 la
      logical*8 lb
      logical*8 lc(2)
      common/com3/la,lb
      equivalence(la,lc)
      lc(2)=.true.
      if(.not.lb)print *,'fail'
      end subroutine sub3
      subroutine sub4
      logical*1 la(2)
      logical*2 lb
      logical*1 lc(8)
      logical*8 ld
      logical*4 le
      logical*2 lf(2)
      logical*8 lg
      logical*2 lh(4)
      logical*8 li
      logical*4 lj(2)
      equivalence(la,lb) 
      equivalence(lc,ld) 
      equivalence(le,lf) 
      equivalence(lg,lh) 
      equivalence(li,lj) 
      lb=0;la(2)=1
      ld=0;lc(8)=1
      le=0;lf(2)=1
      lg=0;lh(4)=1
      li=0;lj(2)=1
      if(lb.ne.1)print *,'fail'
      if(ld.ne.1)print *,'fail'
      if(le.ne.1)print *,'fail'
      if(lg.ne.1)print *,'fail'
      if(li.ne.1)print *,'fail'
      end subroutine sub4

      subroutine sub5
      logical*2 la(2)
      type d
        sequence
        logical*1 lb
        logical*2 lc
      end type
      type(d)::td
      equivalence(la,td)
      la(2)=1
      if(td%lc.ne.1)print *,'fail'
      end subroutine sub5
      subroutine sub6
      type d
        sequence
        logical*2 la
        logical*4 lb
      end type
      type(d)::td
      logical*8 lc
      equivalence(td,lc)
      lc=1
      if(td%lb.ne.1)print *,'fail'
      end subroutine sub6
      subroutine sub7
      type d
        sequence
        logical*4 la
        logical*8 lb
      end type
      type(d)::td
      logical*8 lc(2)
      equivalence(td,lc)
      lc(2)=1
      if(td%lb.ne.1)print *,'fail'
      end subroutine sub7

      module mod8
        logical*1 lb
        logical*2 lc
        common/com8/lb,lc
      end module mod8

      subroutine sub8
      use mod8
      logical*2 la(2)
      common/com8/la
      la(2)=.true.
      if(.not.lc)print *,'fail'
      end subroutine sub8

      module mod9
        logical*2 la
        logical*4 lb
        common/com9/la,lb
      end module mod9

      subroutine sub9
      use mod9
      logical*8 lc
      common/com9/lc
      lc=.true.
      if(.not.lb)print *,'fail'
      end subroutine sub9

      module moda
        logical*4 la
        logical*8 lb
        common/coma/la,lb
      end module moda

      subroutine suba
      use moda
      logical*8 lc(2)
      common/coma/lc
      lc(2)=.true.
      if(.not.lb)print *,'fail'
      end subroutine suba
#endif
