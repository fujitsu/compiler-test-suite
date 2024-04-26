      real*8 a(10,10),b(10,10),c(10,10),d(10,10)
      real*8 resa(10,10),resb(10,10),resc(10,10),resd(10,10)

      n = ifunc(10)

      do i=1,n
         do j=1,n
            a(i,j) = i

            b(j,i) = i

            c(i,j) = i+j

            d(j,i) = i-j
         enddo
      enddo


      do i=1,10
         do j=1,10
            resa(i,j) = i
         enddo
         do j=1,10
            resb(j,i) = i
         enddo
         do j=1,10
            resc(i,j) = i+j
         enddo
         do j=1,10
            resd(j,i) = i-j
         enddo
      enddo

      do i=1,10
      do j=1,10
         if (a(i,j).ne.resa(i,j) .or. c(i,j).ne.resc(i,j) .or.
     +       b(i,j).ne.resb(i,j).or.d(i,j).ne.resd(i,j)) goto 199
      enddo
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) d
      write(6,*) c
      write(6,*) d
 1100 continue

      call sub1
      end

      subroutine sub1
      real*8 a(10,10),b(10,10),c(10,10),d(10,10)
      real*8 resa(10,10),resb(10,10),resc(10,10),resd(10,10)

      a = 0
      n = ifunc(10)

      do i=1,n
         do j=1,n
            a(i,j) = i

            b(j,i) = i

            c(i,j) = i+j

            d(j,i) = i-j
         enddo
      enddo


      do i=1,10
         do j=1,10
            resa(i,j) = i
         enddo
         do j=1,10
            resb(j,i) = i
         enddo
         do j=1,10
            resc(i,j) = i+j
         enddo
         do j=1,10
            resd(j,i) = i-j
         enddo
      enddo

      do i=1,10
      do j=1,10
         if (a(i,j).ne.resa(i,j) .or. c(i,j).ne.resc(i,j) .or.
     +       b(i,j).ne.resb(i,j).or.d(i,j).ne.resd(i,j)) goto 199
      enddo
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) d
      write(6,*) c
      write(6,*) d
 1100 continue
      end

      integer function ifunc(nn)
      ifunc= nn
      return
      end
