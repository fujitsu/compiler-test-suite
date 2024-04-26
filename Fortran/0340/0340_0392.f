      real*8 a(10,10),b(10,10),c(10,10),d(10,10)
      real*8 resa(10,10),resb(10,10),resc(10,10),resd(10,10)
      integer list(10)/1,2,3,4,5,6,7,8,9,10/
      common //i,j

      do i=1,10
         do j=1,10
            a(i,j) = 0
            b(i,j) = 0
            c(i,j) = 0
            d(i,j) = 0
            resa(i,j) = 0
            resb(i,j) = 0
            resc(i,j) = 0
            resd(i,j) = 0
         enddo
      enddo

      n = ifunc(10)

      do i=list(i)*2-i,(n+n)/2,3
         do j=n-list(j)-8,list(j)+n-1,2
            a(i,j) = i

            b(j,i) = i

            c(i,j) = i+j

            d(j,i) = i-j
         enddo
         j = 1
      enddo


      do i=1,10,3
         do j=1,10,2
            resa(i,j) = i
         enddo
         do j=1,10,2
            resb(j,i) = i
         enddo
         do j=1,10,2
            resc(i,j) = i+j
         enddo
         do j=1,10,2
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
      integer list(10)/1,2,3,4,5,6,7,8,9,10/
      common //i,j

      n = ifunc(10)

      a = 0
      b = 0
      c = 0
      d = 0
      resa = 0
      resb = 0
      resc = 0
      resd = 0


      do i=list(i+1)-list(i),list(n-1)+1
         do j=list(n/2)+5,list(j+5)-list(4)-1,-1
            a(i,j) = i

            b(j,i) = i

            c(i,j) = i+j

            d(j,i) = i-j
         enddo
         kk = ifunc2(1)
      enddo


      do i=1,10
         do j=10,1,-1
            resa(i,j) = i
         enddo
         do j=10,1,-1
            resb(j,i) = i
         enddo
         do j=10,1,-1
            resc(i,j) = i+j
         enddo
         do j=10,1,-1
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
      write(6,*) kk
      write(6,*) a
      write(6,*) d
      write(6,*) c
      write(6,*) d
 1100 continue
      end

      integer function ifunc(nn)
      common //i,j
      j = 1
      i = 1
      ifunc= nn
      return
      end

      integer function ifunc2(nn)
      common //i,j
      j = 1
      ifunc2 = nn
      return
      end
