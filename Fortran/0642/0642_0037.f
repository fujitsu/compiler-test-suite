      call pro
      print *,'pass'
      end
      subroutine pro
      integer a1(2),a2(2),a3(3),a4(2)
      integer c1(8)
      call s1(a1,a2,a3,a4)
      call s2(1,2)
      call s3(c1)
      end
      subroutine s1(a1,a2,a3,a4)
      integer a1,a2,a3,a4
      end
      subroutine s2(b1,b2)
      integer b1,b2
      b1=1
      b2=2
      end
      subroutine s3(c1)
      integer c1(8),c2(8)
      do i=1,8
      c2(i)=c1(i)
      enddo
      end
      



