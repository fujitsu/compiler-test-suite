      parameter(n=10)
      complex * 16 a(10),b(10),c(10),s
      complex * 8  a1(10),b1(10),c1(10),s1
      complex * 32 a2(10),b2(10),c2(10),s2
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/2,3,4,5,6,7,8,9,10,11/
      data c/2,3,4,2,3,4,2,3,4,2/
      data s/3./
      data a1/1,2,3,4,5,6,7,8,9,10/
      data b1/2,3,4,5,6,7,8,9,10,11/
      data c1/2,3,4,2,3,4,2,3,4,2/
      data s1/3./
      data a2/1,2,3,4,5,6,7,8,9,10/
      data b2/2,3,4,5,6,7,8,9,10,11/
      data c2/2,3,4,2,3,4,2,3,4,2/
      data s2/3./
      call sub1(a,b,c,s,n)
      call sub2(a1,b1,c1,s1,n)
      call sub3(a2,b2,c2,s2,n)
      write(6,*) ' end ' 
      stop
      end
      subroutine sub1(a,b,c,s,n)
      complex * 16 a(n),b(n),c(n),s
      do i=1,n
        a(i) = exp(b(i))
      enddo
      print *,a
      return
      end
      subroutine sub2(a1,b1,c1,s1,n)
      complex * 8  a1(n),b1(n),c1(n),s1
      do i=1,n
        a1(i) = exp(b1(i))
      enddo
      print *,a1
      return
      end
      subroutine sub3(a2,b2,c2,s2,n)
      complex * 32 a2(10),b2(10),c2(10),s2
      do i=1,n
        a2(i) = exp(b2(i))
      enddo
      print *,a2
      return
      end
