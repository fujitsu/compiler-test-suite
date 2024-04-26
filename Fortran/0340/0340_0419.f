      real*4  r4a(10,10),r4b(10,10),r4c(10,10),r4
      real*8  r8a(10,10),r8b(10,10),r8c(10,10),r8

      do j=1,10
      do i=1,10
         r4a(i,j) = i
         r4b(i,j) = 0
         r4c(i,j) = j
         r4 = 0

         r8 = 0
         r8a(i,j) = i+2
         r8b(i,j) = 0
         r8c(i,j) = j
      enddo
      enddo

      call sub1(r4a,r4b,r4c,r4,r8a,r8b,r8c,r8,1,10)
      r4 = 0
      r8 = 0
      call sub2(r4a,r4b,r4c,r4,r8a,r8b,r8c,r8,1,10)
      end

      subroutine sub1(r4a,r4b,r4c,r4,r8a,r8b,r8c,r8,n,m)
      real*4  r4a(n:m,n:m),r4b(n:m,n:m),r4c(n:m,n:m),r4
      real*8  r8a(n:m,n:m),r8b(n:m,n:m),r8c(n:m,n:m),r8

      do j=n,m
      do i=n,m
         r4 = r4 + r4a(i,j)

         r8 = r8 - r8a(i,j)

         r4b(1,1) = r4b(1,1) + r4a(i,j) * r4c(i,j)

         r8b(3,3) = r8b(3,3) + r8a(i,j) * r8c(i,j)
      end do
      end do

      if (r4.ne.550 .or. r8.ne.-750 .or.
     +    r4b(1,1).ne.3025 .or. r8b(3,3).ne.4125) goto 199

      write(6,*) " ## ok 1 ## "
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) r4,r8
      write(6,*) r4b(1,1),r8b(3,3)
 1100 continue
      end

      subroutine sub2(r4a,r4b,r4c,r4,r8a,r8b,r8c,r8,n,m)
      real*4  r4a(n:m,n:m),r4b(n:m,n:m),r4c(n:m,n:m),r4
      real*8  r8a(n:m,n:m),r8b(n:m,n:m),r8c(n:m,n:m),r8

      r4b = 0
      r8b = 0

      do j=n,m
      do i=n,m
         r4 = r4 + r4a(i,j)

         r8 = r8 - r8a(i,j)

         r4b(1,1) = r4b(1,1) + r4a(i,j) * r4c(i,j)

         r8b(3,3) = r8b(3,3) + r8a(i,j) * r8c(i,j)
      end do
      end do

      if (r4.ne.550 .or. r8.ne.-750 .or.
     +    r4b(1,1).ne.3025 .or. r8b(3,3).ne.4125) goto 199

      write(6,*) " ## ok 2 ## "
      goto 1100
 199    write(6,*) " ## error 2 ##"
      write(6,*) r4,r8
      write(6,*) r4b(1,1),r8b(3,3)
 1100 continue
      end


