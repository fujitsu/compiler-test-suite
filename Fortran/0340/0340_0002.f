      real*4  a(10,11,12),b(10,11,12),c(10,11,12)
      real*4  d(10,11,12),e(10,11,12)
      real*4  resa(10,11,12)
      real*4  x,temp

      x=3
      do k=1,12
        do j=1,11
          do i=1,10
            a(i,j,k) = 1
            b(i,j,k) = 2
            c(i,j,k) = 4
            d(i,j,k) = 8
            e(i,j,k) = 4
            temp = b(i,j,k) * c(i,j,k) * i
            temp = temp + c(i,j,k) * d(i,j,k) + j
            resa(i,j,k) = (temp + d(i,j,k) * e(i,j,k) - k) + x
            x = x + 1
          enddo
        enddo
      enddo

      call sub1(a,b,c,d,e,10,11,12)

      do k=1,12
        do j=1,11
          do i=1,10
            if (abs(a(i,j,k)-resa(i,j,k)) > 0.005) goto 199
          enddo
        enddo
      enddo

      print *, "ok"
      goto 200
 199  print *, " ## error 1 ## "
 200  continue

      END                      

      subroutine sub1(a,b,c,d,e,l,m,n)
      real*4  a(l,m,n),b(l,m,n),c(l,m,n),d(l,m,n),e(l,m,n)
      real*4  x
      real*4  temp

      x = 3
      do k=1,n
        do j=1,m
          do i=1,l
            temp = b(i,j,k) * c(i,j,k) * i
            temp = temp + c(i,j,k) * d(i,j,k) + j
            a(i,j,k) = (temp + d(i,j,k) * e(i,j,k) - k) + x
            x = x + 1
          enddo
        enddo
      enddo
      return
      end
