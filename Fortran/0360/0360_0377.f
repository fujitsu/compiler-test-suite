      real*4 rr4/0/
      real*8 rr8/0/

      do i=1,3
         rr4 = rr4 + i
      enddo
      if (rr4 .ne. 6) then
         write(6,*) " r4 NG ",rr4
      endif
      rr4=0
      do i=1,7
         rr4 = rr4 + i
      enddo
      if (rr4 .ne. 28) then
         write(6,*) " r4 NG ",rr4
      endif

      do i=1,1
         rr8 = rr8 + i
      enddo
      if (rr8 .ne. 1) then
         write(6,*) " r8 NG ",rr8
      endif
      rr8=0
      do i=1,3
         rr8 = rr8 + i
      enddo
      if (rr8 .ne. 6) then
         write(6,*) " r8 NG ",rr8
      endif

      write(6,*) " OK "
      end
