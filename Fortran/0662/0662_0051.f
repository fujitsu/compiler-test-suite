      call aaaa
      call bbbb
      print *,'pass'
      contains
      subroutine aaaa
      integer*1 i1,i11
      integer*2 i2,i22
      integer*4 i4,i44
      integer*8 i8,i88
      real*4 r,rr
      real*8 d,dd
      real*16 q,qq
      i1=8
      i2=8
      i4=8
      i8=8
      r=8
      d=8
      q=8
      i11=5
      i22=5
      i44=5
      i88=5
      rr=5
      dd=5
      qq=5
      call sub1(modulo(i1,i11))
      call sub2(modulo(i1,i22))
      call sub3(modulo(i1,i44))
      call sub4(modulo(i1,i88))
      call sub5(modulo(i1,rr))
      call sub6(modulo(i1,dd))
      call sub7(modulo(i1,qq))

      call sub2(modulo(i2,i11))
      call sub2(modulo(i2,i22))
      call sub3(modulo(i2,i44))
      call sub4(modulo(i2,i88))
      call sub5(modulo(i2,rr))
      call sub6(modulo(i2,dd))
      call sub7(modulo(i2,qq))

      call sub3(modulo(i4,i11))
      call sub3(modulo(i4,i22))
      call sub3(modulo(i4,i44))
      call sub4(modulo(i4,i88))
      call sub5(modulo(i4,rr))
      call sub6(modulo(i4,dd))
      call sub7(modulo(i4,qq))

      call sub4(modulo(i8,i11))
      call sub4(modulo(i8,i22))
      call sub4(modulo(i8,i44))
      call sub4(modulo(i8,i88))
      call sub5(modulo(i8,rr))
      call sub6(modulo(i8,dd))
      call sub7(modulo(i8,qq))

      call sub5(modulo(r,i11))
      call sub5(modulo(r,i22))
      call sub5(modulo(r,i44))
      call sub5(modulo(r,i88))
      call sub5(modulo(r,rr))
      call sub6(modulo(r,dd))
      call sub7(modulo(r,qq))

      call sub6(modulo(d,i11))
      call sub6(modulo(d,i22))
      call sub6(modulo(d,i44))
      call sub6(modulo(d,i88))
      call sub6(modulo(d,rr))
      call sub6(modulo(d,dd))
      call sub7(modulo(d,qq))

      call sub7(modulo(q,i11))
      call sub7(modulo(q,i22))
      call sub7(modulo(q,i44))
      call sub7(modulo(q,i88))
      call sub7(modulo(q,rr))
      call sub7(modulo(q,dd))
      call sub7(modulo(q,qq))
      end subroutine aaaa
      subroutine sub1(x)
      integer*1 x,y
      y=3
      if(x.ne.y) print *,'fail'
      end subroutine sub1
      subroutine sub2(x)
      integer*2 x,y
      y=3
      if(x.ne.y) print *,'fail'
      end subroutine sub2
      subroutine sub3(x)
      integer*4 x,y
      y=3
      if(x.ne.y) print *,'fail'
      end subroutine sub3
      subroutine sub4(x)
      integer*8 x,y
      y=3
      if(x.ne.y) print *,'fail'
      end subroutine sub4
      subroutine sub5(x)
      real x,y
      y=3
      if(x.ne.y) print *,'fail'
      end subroutine sub5
      subroutine sub6(x)
      real*8 x,y
      y=3
      if(x.ne.y) print *,'fail'
      end subroutine sub6
      subroutine sub7(x)
      real*16 x,y
      y=3
      if(x.ne.y) print *,'fail'
      end subroutine sub7
      subroutine bbbb
      integer*1 i1,i11(1)
      integer*2 i2,i22(1)
      integer*4 i4,i44(1)
      integer*8 i8,i88(1)
      real*4 r,rr(1)
      real*8 d,dd(1)
      real*16 q,qq(1)
      i1=8
      i2=8
      i4=8
      i8=8
      r=8
      d=8
      q=8
      i11=5
      i22=5
      i44=5
      i88=5
      rr=5
      dd=5
      qq=5
      call sub11(modulo(i1,i11))
      call sub12(modulo(i1,i22))
      call sub13(modulo(i1,i44))
      call sub14(modulo(i1,i88))
      call sub15(modulo(i1,rr))
      call sub16(modulo(i1,dd))
      call sub17(modulo(i1,qq))

      call sub12(modulo(i2,i11))
      call sub12(modulo(i2,i22))
      call sub13(modulo(i2,i44))
      call sub14(modulo(i2,i88))
      call sub15(modulo(i2,rr))
      call sub16(modulo(i2,dd))
      call sub17(modulo(i2,qq))

      call sub13(modulo(i4,i11))
      call sub13(modulo(i4,i22))
      call sub13(modulo(i4,i44))
      call sub14(modulo(i4,i88))
      call sub15(modulo(i4,rr))
      call sub16(modulo(i4,dd))
      call sub17(modulo(i4,qq))

      call sub14(modulo(i8,i11))
      call sub14(modulo(i8,i22))
      call sub14(modulo(i8,i44))
      call sub14(modulo(i8,i88))
      call sub15(modulo(i8,rr))
      call sub16(modulo(i8,dd))
      call sub17(modulo(i8,qq))

      call sub15(modulo(r,i11))
      call sub15(modulo(r,i22))
      call sub15(modulo(r,i44))
      call sub15(modulo(r,i88))
      call sub15(modulo(r,rr))
      call sub16(modulo(r,dd))
      call sub17(modulo(r,qq))

      call sub16(modulo(d,i11))
      call sub16(modulo(d,i22))
      call sub16(modulo(d,i44))
      call sub16(modulo(d,i88))
      call sub16(modulo(d,rr))
      call sub16(modulo(d,dd))
      call sub17(modulo(d,qq))

      call sub17(modulo(q,i11))
      call sub17(modulo(q,i22))
      call sub17(modulo(q,i44))
      call sub17(modulo(q,i88))
      call sub17(modulo(q,rr))
      call sub17(modulo(q,dd))
      call sub17(modulo(q,qq))
      end subroutine bbbb
      subroutine sub11(x)
      integer*1 x(:),y
      y=3
      if(x(1).ne.y) print *,'fail'
      end subroutine sub11
      subroutine sub12(x)
      integer*2 x(:),y
      y=3
      if(x(1).ne.y) print *,'fail'
      end subroutine sub12
      subroutine sub13(x)
      integer*4 x(:),y
      y=3
      if(x(1).ne.y) print *,'fail'
      end subroutine sub13
      subroutine sub14(x)
      integer*8 x(:),y
      y=3
      if(x(1).ne.y) print *,'fail'
      end subroutine sub14
      subroutine sub15(x)
      real x(:),y
      y=3
      if(x(1).ne.y) print *,'fail'
      end subroutine sub15
      subroutine sub16(x)
      real*8 x(:),y
      y=3
      if(x(1).ne.y) print *,'fail'
      end subroutine sub16
      subroutine sub17(x)
      real*16 x(:),y
      y=3
      if(x(1).ne.y) print *,'fail'
      end subroutine sub17
      end
