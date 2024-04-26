      real*4 r4a(20)
      real*8 r8a(20)
      do i=1,20
         r4a(i) = i
         r8a(i) = i
      enddo
      call test_r4(r4a,r8a,19,20)
      call test_r8(r4a,r8a,19,20)
      end

      subroutine test_r4(r4a,r8a,n19,n20)
      real r4a(20),r4b(20)/20*0/,r4c(20)/20*0/
      real*8 r8a(20),r8b(20)/20*0/,r8c(20)/20*0/

      do i=1,19
         if (r4a(i).gt.10) then
            r4b(i) = 1
            r4c(i) = 2
         else
            r4b(i) = 3
            r4c(i) = 4
         endif
         r4a(i) = r4a(i) + r4b(i) + r4c(i)
      enddo
      write(6,*) r4a

      do i=1,n19
         if (r4a(i).gt.10) then
            r4b(i) = 1
            r4c(i) = 2
         else
            r4b(i) = 3
            r4c(i) = 4
         endif
         r4a(i) = r4a(i) + r4b(i) + r4c(i)
      enddo
      write(6,*) r4a

      do i=1,n20
         if (r4a(i).gt.10) then
            r4b(i) = 1
            r4c(i) = 2
         else
            r4b(i) = 3
            r4c(i) = 4
         endif
         r4a(i) = r4a(i) + r4b(i) + r4c(i)
      enddo
      write(6,*) r4a
      end

      subroutine test_r8(r4a,r8a,n19,n20)
      real r4a(20),r4b(20)/20*0/,r4c(20)/20*0/
      real*8 r8a(20),r8b(20)/20*0/,r8c(20)/20*0/

      do i=1,19
         if (r8a(i).gt.10) then
            r8b(i) = 1
            r8c(i) = 2
         else
            r8b(i) = 3
            r8c(i) = 4
         endif
         r8a(i) = r8a(i) + r8b(i) + r8c(i)
      enddo
      write(6,*) r8a

      do i=1,n19
         if (r8a(i).gt.10) then
            r8b(i) = 1
            r8c(i) = 2
         else
            r8b(i) = 3
            r8c(i) = 4
         endif
         r8a(i) = r8a(i) + r8b(i) + r8c(i)
      enddo
      write(6,*) r8a

      do i=1,n20
         if (r8a(i).gt.10) then
            r8b(i) = 1
            r8c(i) = 2
         else
            r8b(i) = 3
            r8c(i) = 4
         endif
         r8a(i) = r8a(i) + r8b(i) + r8c(i)
      enddo
      write(6,*) r8a
      end
