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
      call sub1(floor(r),3)
      call sub1(floor(d),3)
      call sub1(floor(q),3)
      call sub1(floor(a=r),3)
      call sub1(floor(a=d),3)
      call sub1(floor(a=q),3)
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
      parameter(pr=3)
      parameter(pd=3)
      parameter(pq=3)
      r =3.7
      d =3.7
      q =3.7
      call sub2(floor(r),pr,2)
      call sub2(floor(d),pd,2)
      call sub2(floor(q),pq,2)
      call sub2(floor((/3.9,3.8/)),pr,2)
      call sub2(floor((/3.9d0,3.8d0/)),pd,2)
      call sub2(floor((/3.9q0,3.8q0/)),pq,2)
      call sub2(floor(a=r),pr,2)
      call sub2(floor(a=d),pd,2)
      call sub2(floor(a=q),pq,2)
      end subroutine bbbb
      subroutine sub2(x,y,z)
      integer x(:),y(:),z
        do i=1,z
           if(x(i).ne.y(i)) print *,'fail'
        enddo
      end subroutine sub2
      end
