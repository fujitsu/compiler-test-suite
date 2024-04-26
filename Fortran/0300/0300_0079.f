      parameter(n=10)
      real * 4 a(n),b(n),c(n),s
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/2,3,4,5,6,7,8,9,10,11/
      data c/2,3,4,2,3,4,2,3,4,2/
      data s/3./
      call sub(a,b,c,s,n)
      print *,a
      stop
      end
      subroutine sub(a,b,c,s,n)
      real * 4 a(n),b(n),c(n),s
      do i=1,n,2
        a(i) = b(i)**c(i)
      enddo
      print *,a
      do i=1,n,2
        a(i) = b(i)**s
      enddo
      print *,a
      do i=1,n,2
        a(i) = b(i)**3.
      enddo
      print *,a
      do i=1,n,2
        a(i) = s**b(i)
      enddo
      return
      end
