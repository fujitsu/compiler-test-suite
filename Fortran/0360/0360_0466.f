      REAL r4a(10)/1,2,3,4,5,6,7,8,9,10/,rr4(1)
      real*4  r4b(10)/-3,-2,-1,0,1,2,3,4,5,6/
      REAL*8 rr8(1),r8a(10)/5,4,3,2,1,0,-1,-2,-3,-4/
      REAL*8 r8b(10)
      data r8b/1,3,5,7,9,2,4,6,8,10/

      rr8(1) = 0
      do j=1,10
         DO  I=1,10
            rr8(1) = rr8(1) + r4a(j)
         enddo
      enddo

      if (rr8(1) .ne. 550.0) then
         write(6,*) rr8(1)
         stop 1
      endif
      rr4(1) = 0
      do j=1,10
         DO  I=1,10
            rr4(1) = rr4(1) + r8b(j)
         enddo
      enddo
      if (rr4(1) .ne. 550.0) then
         write(6,*) rr4(1)
         stop 2
      endif

      rr8(1) = 0
      do j=1,10
         DO  I=1,10
            rr8(1) = rr8(1) + r4a(j) + r8a(j)
         enddo
      enddo

      if (rr8(1) .ne. 600.0) then
         write(6,*) rr8(1)
         stop 3
      endif
      rr4(1) = 0
      do j=1,10
         DO  I=1,10
            rr4(1) = rr4(1) + r8b(j) - r4b(j)
         enddo
      enddo
      if (rr4(1) .ne. 400.0) then
         write(6,*) rr4(1)
         stop 4
      endif

      write(6,*) 'ok'
      end
