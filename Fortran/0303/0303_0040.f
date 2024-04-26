      real*4  a(5,6,7),b(5,6,7),c(5,6,7)
      real*4  d(5,6,7),e(5,6,7)
      real*4  resa(5,6,7)
      real*4  x,temp

      x=3
      do k=1,7
        do j=1,6
          do i=1,5
            a(i,j,k) = 1
            b(i,j,k) = 2
            c(i,j,k) = 4
            d(i,j,k) = 8
            e(i,j,k) = 4
            temp = b(i,j,k) * c(i,j,k) * i
            temp = temp + c(i,j,k) * d(i,j,k) + j
            x = x + 1
            resa(i,j,k) = (temp + d(i,j,k) * e(i,j,k) - k) + x
          enddo
        enddo
      enddo

      call sub1(a,b,c,d,e,5,6,7)

      do k=1,7
        do j=1,6
          do i=1,5
            if (abs(a(i,j,k)-resa(i,j,k)) > 0.005) goto 199
          enddo
        enddo
      enddo

      print *, "ok"
      goto 200
 199  print *, " ## error 1 ## "
       print *, a
       print *, resa
 200  continue

      END                      

      subroutine sub1(a,b,c,d,e,l,m,n)
      real*4  a(l,m,n),b(l,m,n),c(l,m,n),d(l,m,n),e(l,m,n)
      real*4  x,temp

      x = 3
      do k=1,n
        do j=1,m
          do i=1,l
            temp = b(i,j,k) * c(i,j,k) * i
            temp = temp + c(i,j,k) * d(i,j,k) + j
            x = x + 1
            a(i,j,k) = (temp + d(i,j,k) * e(i,j,k) - k) + x
          enddo
        enddo
      enddo
      return
      end
