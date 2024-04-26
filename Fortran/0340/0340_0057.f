      real*4  a(10,10,10),b(10,10,10),c(10,10,10)
      real*4  d(10,10,10),e(10,10,10)
      real*4  rese(10,10,10)
      real*4  x

      x=3
      do k=1,10
        do j=1,10
          do i=1,10
            a(i,j,k) = 1
            b(i,j,k) = 2
            c(i,j,k) = 4
            d(i,j,k) = 8
            e(i,j,k) = 4
            a(i,j,k) = b(i,j,k) * c(i,j,k) * i
            rese(i,j,k) = a(i,j,k) + d(i,j,k) + x
          enddo
        enddo
      enddo

      call sub1(a,b,c,d,e,10,10,10,3.0)

      do k=1,10
        do j=1,10
          do i=1,10
            if (abs(e(i,j,k)-rese(i,j,k)) > 0.005) goto 199
          enddo
        enddo
      enddo

      print *, "ok"
      goto 200
 199  print *, " ## error 1 ## "
      print *, a
      print *, rese
 200  continue

      END                      

      subroutine sub1(a,b,c,d,e,l,m,n,y)
      real*4  a(l,m,n),b(l,m,n),c(l,m,n),d(l,m,n),e(l,m,n)
      real*4  x,y

      x = 3
      do k=1,n
        do j=1,m
          do i=1,l
            a(i,j,k) = b(i,j,k) * c(i,j,k) * i
            e(i,j,k) = a(i,j,k) + d(i,j,k) + x
          enddo
        enddo
      enddo
      return
      end
