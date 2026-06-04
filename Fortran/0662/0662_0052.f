      call real4
      call real8
      call real16
      print *,'pass'
      contains
      subroutine real4
      real*4 r,rr(10)
      real*8 d,dd(10)
      real*16 q,qq(10)
      r=8.2789
      d=8.2789
      q=8.2789
      c=8.2789
      dc=8.2789
      qc=8.2789
      rr=8.2789
      dd=8.2789
      qq=8.2789
      call sub1(aint(r,kind=4))
      call sub1(aint(d,kind=4))
      call sub1(aint(q,kind=4))
      call sub11(aint(rr,kind=4),10)
      call sub11(aint(dd,kind=4),10)
      call sub11(aint(qq,kind=4),10)
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
      r=8
      d=8
      q=8
      rr=8
      dd=8
      qq=8
      call sub2(aint(r,kind=8))
      call sub2(aint(d,kind=8))
      call sub2(aint(q,kind=8))
      call sub22(aint(rr,kind=8),10)
      call sub22(aint(dd,kind=8),10)
      call sub22(aint(qq,kind=8),10)
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
      r=8
      d=8
      q=8
      rr=8
      dd=8
      qq=8
      call sub4(aint(r,kind=16))
      call sub4(aint(d,kind=16))
      call sub4(aint(q,kind=16))
      call sub44(aint(rr,kind=16),10)
      call sub44(aint(dd,kind=16),10)
      call sub44(aint(qq,kind=16),10)
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
