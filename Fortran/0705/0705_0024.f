      call s1
      print *,'pass'
      end
      subroutine err(i,j)
      print *,'error code :',i,j
      print *,'fail'
      end
      subroutine sx(c,i,j)
      complex*8 c
      c=cmplx(i,j)
      end
      subroutine sc(iu,i,j)
      complex*8 c
      rewind iu
      read (iu,*) c
      if (c/=cmplx(i,j)) call err(9999,iu)
      iu=iu+1
      end
      subroutine s1
      call ss1
      call ss2
      end
      subroutine ss1
      complex*8  a1,a2(2) 
      type x1
      complex*8  a1,a2(2) 
      end type
      type x2
      complex*8  a1,a2(2) 
      type (x1)::c
      end type
      type x3
      complex*8  a1,a2(2) 
      type (x1)::c
      type (x2)::d
      end type
      type (x3):: x
      k=2
      iu=11
      call sx(a1,1,2)
      if (a1/=cmplx(1,2))call err(001,0)
      write(iu ,*) a1
      call sc(iu,1,2)
      call sx(a2,2,3)
      if (a2(1)/=cmplx(2,3))call err(002,0)
      write(iu ,*) a2(1)
      call sc(iu,2,3)
      call sx(a2(k),3,4)
      if (a2(k)/=cmplx(3,4))call err(003,0)
      write(iu ,*) a2(2)
      call sc(iu,3,4)
      call sx(x%a1,1,2)
      if (x%a1/=cmplx(1,2))call err(004,0)
      write(iu ,*) x%a1
      call sc(iu,1,2)
      call sx(x%a2,2,3)
      if (x%a2(1)/=cmplx(2,3))call err(005,0)
      write(iu ,*) x%a2(1)
      call sc(iu,2,3)
      call sx(x%a2(k),3,4)
      if (x%a2(k)/=cmplx(3,4))call err(006,0)
      write(iu ,*) x%a2(2)
      call sc(iu,3,4)
      call sx(x%c%a1,1,2)
      if (x%c%a1/=cmplx(1,2))call err(007,0)
      write(iu ,*) x%c%a1
      call sc(iu,1,2)
      call sx(x%c%a2,2,3)
      if (x%c%a2(1)/=cmplx(2,3))call err(008,0)
      write(iu ,*) x%c%a2(1)
      call sc(iu,2,3)
      call sx(x%c%a2(k),3,4)
      if (x%c%a2(k)/=cmplx(3,4))call err(009,0)
      write(iu ,*) x%c%a2(2)
      call sc(iu,3,4)
      call sx(x%d%a1,1,2)
      if (x%d%a1/=cmplx(1,2))call err(010,0)
      write(iu ,*) x%d%a1
      call sc(iu,1,2)
      call sx(x%d%a2,2,3)
      if (x%d%a2(1)/=cmplx(2,3))call err(011,0)
      write(iu ,*) x%d%a2(1)
      call sc(iu,2,3)
      call sx(x%d%a2(k),3,4)
      if (x%d%a2(k)/=cmplx(3,4))call err(012,0)
      write(iu ,*) x%d%a2(2)
      call sc(iu,3,4)
      call sx(x%d%c%a1,1,2)
      if (x%d%c%a1/=cmplx(1,2))call err(013,0)
      write(iu ,*) x%d%c%a1
      call sc(iu,1,2)
      call sx(x%d%c%a2,2,3)
      if (x%d%c%a2(1)/=cmplx(2,3))call err(014,0)
      write(iu ,*) x%d%c%a2(1)
      call sc(iu,2,3)
      call sx(x%d%c%a2(k),3,4)
      if (x%d%c%a2(k)/=cmplx(3,4))call err(015,0)
      write(iu ,*) x%d%c%a2(2)
      call sc(iu,3,4)
      end
      subroutine ss2
      pointer (ia1,a1),(ia2,a2),(ix,x)
      complex*8  a1,a2(2) 
      complex*8  b1,b2(2) 
      type x1
      complex*8  a1,a2(2) 
      end type
      type x2
      complex*8  a1,a2(2) 
      type (x1)::c
      end type
      type x3
      complex*8  a1,a2(2) 
      type (x1)::c
      type (x2)::d
      end type
      type (x3):: x,bx
      k=2
      iu=51
      ia1=loc(b1)
      ia2=loc(b2)
      ix =loc(bx)

      call sx(a1,1,2)
      if (a1/=cmplx(1,2))call err(001,0)
      write(iu ,*) a1
      call sc(iu,1,2)
      call sx(a2,2,3)
      if (a2(1)/=cmplx(2,3))call err(002,0)
      write(iu ,*) a2(1)
      call sc(iu,2,3)
      call sx(a2(k),3,4)
      if (a2(k)/=cmplx(3,4))call err(003,0)
      write(iu ,*) a2(2)
      call sc(iu,3,4)
      call sx(x%a1,1,2)
      if (x%a1/=cmplx(1,2))call err(004,0)
      write(iu ,*) x%a1
      call sc(iu,1,2)
      call sx(x%a2,2,3)
      if (x%a2(1)/=cmplx(2,3))call err(005,0)
      write(iu ,*) x%a2(1)
      call sc(iu,2,3)
      call sx(x%a2(k),3,4)
      if (x%a2(k)/=cmplx(3,4))call err(006,0)
      write(iu ,*) x%a2(2)
      call sc(iu,3,4)
      call sx(x%c%a1,1,2)
      if (x%c%a1/=cmplx(1,2))call err(007,0)
      write(iu ,*) x%c%a1
      call sc(iu,1,2)
      call sx(x%c%a2,2,3)
      if (x%c%a2(1)/=cmplx(2,3))call err(008,0)
      write(iu ,*) x%c%a2(1)
      call sc(iu,2,3)
      call sx(x%c%a2(k),3,4)
      if (x%c%a2(k)/=cmplx(3,4))call err(009,0)
      write(iu ,*) x%c%a2(2)
      call sc(iu,3,4)
      call sx(x%d%a1,1,2)
      if (x%d%a1/=cmplx(1,2))call err(010,0)
      write(iu ,*) x%d%a1
      call sc(iu,1,2)
      call sx(x%d%a2,2,3)
      if (x%d%a2(1)/=cmplx(2,3))call err(011,0)
      write(iu ,*) x%d%a2(1)
      call sc(iu,2,3)
      call sx(x%d%a2(k),3,4)
      if (x%d%a2(k)/=cmplx(3,4))call err(012,0)
      write(iu ,*) x%d%a2(2)
      call sc(iu,3,4)
      call sx(x%d%c%a1,1,2)
      if (x%d%c%a1/=cmplx(1,2))call err(013,0)
      write(iu ,*) x%d%c%a1
      call sc(iu,1,2)
      call sx(x%d%c%a2,2,3)
      if (x%d%c%a2(1)/=cmplx(2,3))call err(014,0)
      write(iu ,*) x%d%c%a2(1)
      call sc(iu,2,3)
      call sx(x%d%c%a2(k),3,4)
      if (x%d%c%a2(k)/=cmplx(3,4))call err(015,0)
      write(iu ,*) x%d%c%a2(2)
      call sc(iu,3,4)
      end
