      program main
      parameter(n=10,n1=10,n2=10)
      real * 8 a(n,n),b(n,n),c(n,n)
      real * 8 d(n,n,n),e(n,n,n)
      real * 8 ss
      do k=1,n
      do j=1,n
      do i=1,n
        a(i,j) = i
        b(i,j) = j
        c(i,j) = k
        d(i,j,k) = k
        e(i,j,k) = k
      enddo
      enddo
      enddo
      call sub1(d,e,c,n,n1,n2)
      call sub2(a,b,n,n1,n2)
      ss = 0
      call sub3(a,b,c,n,n1,n2,ss)
      call sub4(a,b,c,n,n1,n2)
      print *," end "
      stop
      end
      subroutine sub1(a,b,c,n,n1,n2)
      real * 8 a(n,n,n),b(n,n,n),c(n,n)
      do k=1,n2
      do j=1,n2
        x = c(j,k) 
      do i=1,n1
        b(k,j,i) = a(k,j,i)+x
      enddo
      enddo
      enddo
      return
      end
      subroutine sub2(a,b,n,n1,n2)
      real * 8 a(n,n),b(n,n)
      do j=1,n2
      do i=1,n1
           b(j,i) = a(j,i)
      enddo
      enddo
      return
      end
      subroutine sub3(a,b,c,n,n1,n2,ss)
      real * 8 a(n,n),b(n,n),c(n,n)
      real * 8 ss
      do j=1,n2
      do i=1,n1
         if (ss.eq.0) then
           b(j,i) = a(j,i)+c(j,i)
         else
           b(j,i) = a(j,i)-c(j,i)
         endif
      enddo
      enddo
      return
      end
      subroutine sub4(a,b,c,n,n1,n2)
      real * 8 a(n,n),b(n,n),c(n,n)
      do j=1,n2
      do i=1,n1
          b(j,i) = a(j,i)+b(j,i)
      enddo
      enddo
      do j=1,n2
      do i=1,n1
          c(j,i) = a(j,i)+b(j,i)
      enddo
      enddo
      return
      end
