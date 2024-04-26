      program main
      parameter(n=10)
      real * 8 a(n),b(n),c(n),d(n,n)
      call init(a,b,c,d,n)
      call sub1(a,b,c,d,n)
!
      call init(a,b,c,d,n)
      call sub2(a,b,c,d,n)
!
      call init(a,b,c,d,n)
      call sub3(a,b,c,d,n)
!
      call init(a,b,c,d,n)
      call sub4(a,b,c,d,n)
!
      call init(a,b,c,d,n)
      call sub5(a,b,c,d,n)
 10   format(5f10.5)
      stop
      end
      subroutine init(a,b,c,d,n)
      real * 8 a(n),b(n),c(n),d(n,n)
      do j=1,n
      do i=1,n
       a(i) = i
       b(i) = i+1
       d(i,j) = i
       c(i) = i+2
      enddo
      enddo
      return
      end
      subroutine sub1(a,b,c,d,n)
      real * 8 a(n),b(n),c(n),d(n,n)
      do j=1,n -1
      do i=1,n -1
        a(i) = a(i+1)+b(i)
      enddo
      enddo
      print *,a
      return
      end
      subroutine sub2(a,b,c,d,n)
      real * 8 a(n),b(n),c(n),d(n,n)
      do j=1,n -4
      do i=1,n -4
        c(i) = c(i+3)+b(i)
      enddo
      enddo
      print *,c
      return
      end
      subroutine sub3(a,b,c,d,n)
      real * 8 a(n),b(n),c(n),d(n,n)
      do j=1,n -1
      do i=1,n -1
        a(i) = a(i+1) + d(i,j)
      enddo
      enddo
      print *,a
      return
      end
      subroutine sub4(a,b,c,d,n)
      real * 8 a(n),b(n),c(n),d(n,n)
      do j=1,n -1
      m=0
      do i=1,n -1
        m = m+1
        a(m) = a(m+1) + d(i,j)
      enddo
      enddo
       print *,a
      return
      end
      subroutine sub5(a,b,c,d,n)
      real * 8 a(n),b(n),c(n),d(n,n)
      do j=1,n -1
      do i=1,n -1
         d(2,i) = d(2,i+1) + b(i)
      enddo
      enddo
      print *,d
      return
      end
