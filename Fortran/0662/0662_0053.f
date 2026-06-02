      call real4
      call real8
      call real16
      print *,'pass'
      contains
      subroutine real4
      real*4 r,rr(10)
      real*8 d,dd(10)
      real*16 q,qq(10)
      r=7.5789
      d=7.5789
      q=7.5789
      c=7.5789
      dc=7.5789
      qc=7.5789
      rr=7.5789
      dd=7.5789
      qq=7.5789
      call sub1(anint(r,kind=4))
      call sub1(anint(d,kind=4))
      call sub1(anint(q,kind=4))
      call sub11(anint(rr,kind=4),10)
      call sub11(anint(dd,kind=4),10)
      call sub11(anint(qq,kind=4),10)
      end subroutine real4
      subroutine sub1(x)
      real*4 x,y
      y=8
      if(x.ne.y) print *,'fail'
      end subroutine sub1
      subroutine sub11(x,z)
      real*4 x(:),y
      integer z
      y=8
      do i=1,z
      if(x(i).ne.y) print *,'fail'
      enddo
      end subroutine sub11
      subroutine real8
      real*4 r,rr(10)
      real*8 d,dd(10)
      real*16 q,qq(10)
      r=7.5789
      d=7.5789
      q=7.5789
      rr=7.5789
      dd=7.5789
      qq=7.5789
      call sub2(anint(r,kind=8))
      call sub2(anint(d,kind=8))
      call sub2(anint(q,kind=8))
      call sub22(anint(rr,kind=8),10)
      call sub22(anint(dd,kind=8),10)
      call sub22(anint(qq,kind=8),10)
      end subroutine real8
      subroutine sub2(x)
      real*8 x,y
      y=8
      if(x.ne.y) print *,'fail'
      end subroutine sub2
      subroutine sub22(x,z)
      real*8 x(:),y
      integer z
      y=8
      do i=1,z
      if(x(i).ne.y) print *,'fail'
      enddo
      end subroutine sub22
      subroutine real16
      real*4 r,rr(10)
      real*8 d,dd(10)
      real*16 q,qq(10)
      r=7.5789
      d=7.5789
      q=7.5789
      rr=7.5789
      dd=7.5789
      qq=7.5789
      call sub4(anint(r,kind=16))
      call sub4(anint(d,kind=16))
      call sub4(anint(q,kind=16))
      call sub44(anint(rr,kind=16),10)
      call sub44(anint(dd,kind=16),10)
      call sub44(anint(qq,kind=16),10)
      end subroutine real16
      subroutine sub4(x)
      real*16 x,y
      y=8
      if(x.ne.y) print *,'fail'
      end subroutine sub4
      subroutine sub44(x,z)
      real*16 x(:),y
      integer z
      y=8
      do i=1,z
      if(x(i).ne.y) print *,'fail'
      enddo
      end subroutine sub44
      end
