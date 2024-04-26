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
      real * 8 a(n),b(n),c(n),d(n,n),m
      do j=1,n -1
      m = 0
      do i=1,n -1
        a(i) = a(i+1)+b(i)
        m = m+a(i)
      enddo
      enddo
      print *,a,m
      return
      end
      subroutine sub2(a,b,c,d,n)
      real * 8 a(n),b(n),c(n),d(n,n),m
      m=0
      do j=1,n -4
      do i=1,n -4
        c(i) = c(i+3)+b(i)
        m = d(i,j)+1
      enddo
      enddo
      print *,c,m
      return
      end
      subroutine sub3(a,b,c,d,n)
      real * 8 a(n),b(n),c(n),d(n,n),m
      m=0
      do j=1,n -1
      do i=1,n -1
        a(i) = a(i+1) + d(i,j)
        if (i.lt.5) then
          m = d(i,j)+1
        endif
      enddo
      enddo
      print *,a,m
      return
      end
