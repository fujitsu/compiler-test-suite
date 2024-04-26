      integer*8 a(16),c(16)/16*4/
      integer*8 b(16)/1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6/
      integer*8 res1(16)/5,6,7,8,9,10,11,12,13,14,
     +     5,6,7,8,9,10/
      integer*8 res2(16)/-3,-2,-1,0,1,2,3,4,5,6,
     +     -3,-2,-1,0,1,2/
      integer*8 res3(16)/4,8,12,16,20,24,28,32,36,40,
     +     4,8,12,16,20,24/
      integer*4 res4(16)/3*0,4*1,3*2,3*0,3*1/
      integer*4 res5(16)/1,16,81,256,625,1296,2401,4096,
     +  6561,10000,1,16,81,256,625,1296/
      integer*4 res6(16)/1,2,3,0,1,2,3,0,1,2,1,2,3,0,1,2/

      do i=1,16
         a(i) = b(i) + c(i)
      enddo   
      do i=1,16
         if (a(i).ne.res1(i)) then
            write(6,*) a
            write(6,*) res1
            stop 1
         endif
      enddo
      do i=1,16
         a(i) = b(i) - c(i)
      enddo   
      do i=1,16
         if (a(i).ne.res2(i)) then
            write(6,*) a
            write(6,*) res2
            stop 2
         endif
      enddo

      do i=1,16
         a(i) = b(i) * c(i)
      enddo   
      do i=1,16
         if (a(i).ne.res3(i)) then
            write(6,*) a
            write(6,*) res3
            stop 3
         endif
      enddo

      do i=1,16
         a(i) = b(i) / c(i)
      enddo   
      do i=1,16
         if (a(i).ne.res4(i)) then
            write(6,*) a
            write(6,*) res4
            stop 4
         endif
      enddo

      do i=1,16
         a(i) = b(i) ** c(i)
      enddo   
      do i=1,16
         if (a(i).ne.res5(i)) then
            write(6,*) a
            write(6,*) res5
            stop 5
         endif
      enddo

      do i=1,16
         a(i) = mod(b(i) , c(i))
      enddo   
      do i=1,16
         if (a(i).ne.res6(i)) then
            write(6,*) a
            write(6,*) res6
            stop 6
         endif
      enddo

      write(6,*) ' ok '
      end
