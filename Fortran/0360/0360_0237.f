      real*4 r4a(10)/10*2/,r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*4 r4c(10)/10*9/
      real*8 r8a(10)/10*2/
      real*8 r8b(10)/29,-13,29,-13,29,-13,29,-13,29,-13/
      real*8 r8c(10)/10*9/

      real*4 r4r1(10)/29,2,2,-13,29,2,2,-13,29,2/
      real*4 r4r2(10)/2,-13,29,2,2,-13,29,2,2,-13/
      real*8 r8r1(10)/2,-13,29,2,2,-13,29,2,2,-13/
      real*8 r8r2(10)/29,2,2,-13,29,2,2,-13,29,2/

      do i=1,10
         r4a(1) = max(r4a(1),abs(r4b(i)),r4c(i))
         r8a(2) = min(r8a(2),r8b(i),abs(r8c(i)))
      enddo
      write(21,*)

      do i=1,10
         r8a(3) = max(r8a(3),abs(r8b(i)),r8c(i))
         r4a(4) = min(r4a(4),r4b(i),abs(r4c(i)))
      enddo
      write(21,*)

      do i=1,10
         r4a(5) = max(r4a(5),abs(r4b(i)),r4c(i))
         r8a(6) = min(r8a(6),r8b(i),abs(r8c(i)))
      enddo
      write(21,*)


      do i=1,10
         r8a(7) = max(r8a(7),abs(r8b(i)),r8c(i))
         r4a(8) = min(r4a(8),r4b(i),abs(r4c(i)))
      enddo
      write(21,*)

      do i=1,10
         r4a(9) = max(r4a(9),abs(r4b(i)),r4c(i))
         r8a(10) = min(r8a(10),r8b(i),abs(r8c(i)))
      enddo

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

      r8a = 2
      r4a = 2

      do i=1,10
         r8a(1) = max(r8a(1),abs(r8b(i)),r8c(i))
         r4a(2) = min(r4a(2),r4b(i),abs(r4c(i)))
      enddo
      write(21,*)

      do i=1,10
         r4a(3) = max(r4a(3),abs(r4b(i)),r4c(i))
         r8a(4) = min(r8a(4),r8b(i),abs(r8c(i)))
      enddo
      write(21,*)

      do i=1,10
         r8a(5) = max(r8a(5),abs(r8b(i)),r8c(i))
         r4a(6) = min(r4a(6),r4b(i),abs(r4c(i)))
      enddo
      write(21,*)


      do i=1,10
         r4a(7) = max(r4a(7),abs(r4b(i)),r4c(i))
         r8a(8) = min(r8a(8),r8b(i),abs(r8c(i)))
      enddo
      write(21,*)

      do i=1,10
         r8a(9) = max(r8a(9),abs(r8b(i)),r8c(i))
         r4a(10) = min(r4a(10),r4b(i),abs(r4c(i)))
      enddo

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
