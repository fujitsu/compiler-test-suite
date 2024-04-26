      real*4 r4a(10)/10*2/,r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*4 r4c(10)/10*9/
      real*4 r4a1,r4a2,r4a3,r4a4,r4a5,r4a6,r4a7,r4a8,r4a9,r4a10
      real*8 r8a(10)/10*2/,r8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*8 r8c(10)/10*9/
      real*8 r8a1,r8a2,r8a3,r8a4,r8a5,r8a6,r8a7,r8a8,r8a9,r8a10
      real*4 r4r1(10)/2,-13,29,2,2,-13,29,2,2,-13/
      real*4 r4r2(10)/29,2,2,-13,29,2,2,-13,29,2/
      real*8 r8r1(10)/29,2,2,-13,29,2,2,-13,29,2/
      real*8 r8r2(10)/2,-13,29,2,2,-13,29,2,2,-13/
      data r4a1,r4a2,r4a3,r4a4,r4a5,r4a6,r4a7,r4a8,r4a9,r4a10/10*0/
      data r8a1,r8a2,r8a3,r8a4,r8a5,r8a6,r8a7,r8a8,r8a9,r8a10/10*0/

      do i=1,10
         r8a1 = max(r8a1,abs(r8b(i)),r8c(i))
         r4a2 = min(r4a2,r4b(i),abs(r4c(i)))
      enddo
      r8a(1) = r8a1
      r4a(2) = r4a2

      do i=1,10
         r4a3 = max(r4a3,abs(r4b(i)),r4c(i))
         r8a4 = min(r8a4,r8b(i),abs(r8c(i)))
      enddo
      r4a(3) = r4a3
      r8a(4) = r8a4

      do i=1,10
         r8a5 = max(r8a5,abs(r8b(i)),r8c(i))
         r4a6 = min(r4a6,r4b(i),abs(r4c(i)))
      enddo

      r8a(5) = r8a5
      r4a(6) = r4a6

      do i=1,10
         r4a7 = max(r4a7,abs(r4b(i)),r4c(i))
         r8a8 = min(r8a8,r8b(i),abs(r8c(i)))
      enddo

      r4a(7) = r4a7
      r8a(8) = r8a8
      do i=1,10
         r8a9 = max(r8a9,abs(r8b(i)),r8c(i))
         r4a10 = min(r4a10,r4b(i),abs(r4c(i)))
      enddo
      r8a(9) = r8a9
      r4a(10) = r4a10

      do i=1,10
         if (r4a(i).ne.r4r1(i)) goto 10
         if (r8a(i).ne.r8r1(i)) goto 10
      enddo

      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',r4a
      write(6,*) ' calc ',r8a
      write(6,*) ' res  ',r4r1
      write(6,*) ' res  ',r8r1
 20   continue

      r4a = 2
      r8a = 2

      do i=1,10
         r4a1 = max(r4a1,abs(r4b(i)),r4c(i))
         r8a2 = min(r8a2,r8b(i),abs(r8c(i)))
      enddo

      r4a(1) = r4a1
      r8a(2) = r8a2

      do i=1,10
         r8a3 = max(r8a3,abs(r8b(i)),r8c(i))
         r4a4 = min(r4a4,r4b(i),abs(r4c(i)))
      enddo

      r8a(3) = r8a3
      r4a(4) = r4a4
      do i=1,10
         r4a5 = max(r4a5,abs(r4b(i)),r4c(i))
         r8a6 = min(r8a6,r8b(i),abs(r8c(i)))
      enddo

      r4a(5) = r4a5
      r8a(6) = r8a6
      do i=1,10
         r8a7 = max(r8a7,abs(r8b(i)),r8c(i))
         r4a8 = min(r4a8,r4b(i),abs(r4c(i)))
      enddo

      r8a(7) = r8a7
      r4a(8) = r4a8
      do i=1,10
         r4a9 = max(r4a9,abs(r4b(i)),r4c(i))
         r8a10 = min(r8a10,r8b(i),abs(r8c(i)))
      enddo
      r4a(9) = r4a9
      r8a(10) = r8a10

      do i=1,10
         if (r4a(i).ne.r4r2(i)) goto 30
         if (r8a(i).ne.r8r2(i)) goto 30
      enddo

      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',r4a
      write(6,*) ' calc ',r8a
      write(6,*) ' res  ',r4r2
      write(6,*) ' res  ',r8r2
 40   continue
      end
