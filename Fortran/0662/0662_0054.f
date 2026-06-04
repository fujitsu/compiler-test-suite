      call integer1
      call integer2
      call integer4
      call integer8
      print *,'pass'
      contains
      subroutine integer1
      real*4 r,rr(10)
      real*8 d,dd(10)
      real*16 q,qq(10)
      r=7.789
      d=7.789
      q=7.789
      rr=7.789
      dd=7.789
      qq=7.789
      call sub1(nint(r,kind=1))
      call sub1(nint(d,kind=1))
      call sub1(nint(q,kind=1))
      call sub11(nint(rr,kind=1),10)
      call sub11(nint(dd,kind=1),10)
      call sub11(nint(qq,kind=1),10)
      end subroutine integer1
      subroutine sub1(x)
      integer*1 x,y
      y=8
      if(x.ne.y) print *,'fail'
      end subroutine sub1
      subroutine sub11(x,z)
      integer*1 x(:),y
      integer z
      y=8
      do i=1,z
      if(x(i).ne.y) print *,'fail'
      enddo
      end subroutine sub11
      subroutine integer2
      real*4 r,rr(10)
      real*8 d,dd(10)
      real*16 q,qq(10)
      r=7.898
      d=7.898
      q=7.898
      rr=7.898
      dd=7.898
      qq=7.898
      call sub2(nint(r,kind=2))
      call sub2(nint(d,kind=2))
      call sub2(nint(q,kind=2))
      call sub22(nint(rr,kind=2),10)
      call sub22(nint(dd,kind=2),10)
      call sub22(nint(qq,kind=2),10)
      end subroutine integer2
      subroutine sub2(x)
      integer*2 x,y
      y=8
      if(x.ne.y) print *,'fail'
      end subroutine sub2
      subroutine sub22(x,z)
      integer*2 x(:),y
      integer z
      y=8
      do i=1,z
      if(x(i).ne.y) print *,'fail'
      enddo
      end subroutine sub22
      subroutine integer4
      real*4 r,rr(10)
      real*8 d,dd(10)
      real*16 q,qq(10)
      r=8
      d=8
      q=8
      rr=8
      dd=8
      qq=8
      call sub4(nint(r,kind=4))
      call sub4(nint(d,kind=4))
      call sub4(nint(q,kind=4))
      call sub44(nint(rr,kind=4),10)
      call sub44(nint(dd,kind=4),10)
      call sub44(nint(qq,kind=4),10)
      end subroutine integer4
      subroutine sub4(x)
      integer*4 x,y
      y=8
      if(x.ne.y) print *,'fail'
      end subroutine sub4
      subroutine sub44(x,z)
      integer*4 x(:),y
      integer z
      y=8
      do i=1,z
      if(x(i).ne.y) print *,'fail'
      enddo
      end subroutine sub44
      subroutine integer8
      real*4 r,rr(10)
      real*8 d,dd(10)
      real*16 q,qq(10)
      r=8
      d=8
      q=8
      rr=8
      dd=8
      qq=8
      call sub8(nint(r,kind=8))
      call sub8(nint(d,kind=8))
      call sub8(nint(q,kind=8))
      call sub88(nint(rr,kind=8),10)
      call sub88(nint(dd,kind=8),10)
      call sub88(nint(qq,kind=8),10)
      end subroutine integer8
      subroutine sub8(x)
      integer*8 x,y
      y=8
      if(x.ne.y) print *,'fail'
      end subroutine sub8
      subroutine sub88(x,z)
      integer*8 x(:),y
      integer z
      y=8
      do i=1,z
      if(x(i).ne.y) print *,'fail'
      enddo
      end subroutine sub88
      end
