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
      do i=1,10
        a(i) = exp(b(i))
      enddo
      print *,a
      do i=1,10
        a1(i) = exp(b1(i))
      enddo
      print *,a1
      do i=1,10
        a2(i) = exp(b2(i))
      enddo
      print *,a2
      stop
      end
