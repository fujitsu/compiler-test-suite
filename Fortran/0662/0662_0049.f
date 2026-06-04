      call aaaa
      call bbbb
      print *,'pass'
      contains
      subroutine aaaa
      real*4 r
      real*8 d
      real*16 q
      r =3.7
      d =3.7
      q =3.7
      call sub1(ceiling(r),4)
      call sub1(ceiling(d),4)
      call sub1(ceiling(q),4)
      call sub1(ceiling(a=r),4)
      call sub1(ceiling(a=d),4)
      call sub1(ceiling(a=q),4)
      end subroutine aaaa
      subroutine sub1(x,y)
      integer x,y
      if(x.ne.y) print *,'fail'
      end subroutine sub1
      subroutine bbbb
      integer*4 pr(2),pd(2),pq(2)
      real*4 r(2)
      real*8 d(2)
      real*16 q(2)
      parameter(pr=4)
      parameter(pd=4)
      parameter(pq=4)
      r =3.7
      d =3.7
      q =3.7
      call sub2(ceiling(r),pr,2)
      call sub2(ceiling(d),pd,2)
      call sub2(ceiling(q),pq,2)
      call sub2(ceiling((/3.9,3.8/)),pr,2)
      call sub2(ceiling((/3.9d0,3.8d0/)),pd,2)
      call sub2(ceiling((/3.9q0,3.8q0/)),pq,2)
      call sub2(ceiling(a=r),pr,2)
      call sub2(ceiling(a=d),pd,2)
      call sub2(ceiling(a=q),pq,2)
      end subroutine bbbb
      subroutine sub2(x,y,z)
      integer x(:),y(:),z
        do i=1,z
           if(x(i).ne.y(i)) print *,'fail'
        enddo
      end subroutine sub2
      end
