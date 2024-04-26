      real*8 a(10,10),b(10,10),c(10,10),d(10,10)
      real*8 resa(10,10),resb(10,10),resc(10,10),resd(10,10)


      do i=1,10
         do j=1,10
            resa(i,j) = i
         enddo
         do j=1,10
            resb(j,i) = j
         enddo
         do j=1,10
            resc(i,j) = i+j
         enddo
         do j=1,10
            resd(j,i) = i-j
         enddo
      enddo

      call sub1(a,b,c,d,resa,resb,resc,resd,1,10,1,10)
      call sub2(a,b,c,d,resa,resb,resc,resd,1,10,1,10)
      end

      subroutine sub1(a,b,c,d,resa,resb,resc,resd,n1,n2,m1,m2)
      real*8 a(n1:n2,m1:m2),b(n1:n2,m1:m2)
      real*8 c(n1:n2,m1:m2),d(n1:n2,m1:m2)
      real*8 resa(n1:n2,m1:m2),resb(n1:n2,m1:m2)
      real*8 resc(n1:n2,m1:m2),resd(n1:n2,m1:m2)

      do i=n1,n2
         do j=m1,m2
            a(i,j) = i

            b(j,i) = j

            c(i,j) = i+j

            d(j,i) = i-j
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
      end

      subroutine sub2(a,b,c,d,resa,resb,resc,resd,n1,n2,m1,m2)
      real*8 a(n1:n2,m1:m2),b(n1:n2,m1:m2)
      real*8 c(n1:n2,m1:m2),d(n1:n2,m1:m2)
      real*8 resa(n1:n2,m1:m2),resb(n1:n2,m1:m2)
      real*8 resc(n1:n2,m1:m2),resd(n1:n2,m1:m2)

      a = 0

      do i=n1,n2
         do j=m1,m2
            a(i,j) = i

            b(j,i) = j

            c(i,j) = i+j

            d(j,i) = i-j
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
