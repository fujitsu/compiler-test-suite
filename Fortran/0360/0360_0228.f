      real*4 r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*4 r4c(10)/10*9/,r4r(10)/29,-13,29,-13,29,-13,29,-13,29,-13/
      real*8 r8r(10)/29,-13,29,-13,29,-13,29,-13,29,-13/
      integer *4 i4a(10)/10*0/
      integer *4 i4a1,i4a2,i4a3,i4a4,i4a5,i4a6,i4a7,i4a8,i4a9,i4a10
      data i4a1,i4a2,i4a3,i4a4,i4a5,i4a6,i4a7,i4a8,i4a9,i4a10/10*0/

      do i=1,10
         i4a(1) = max(i4a(1),abs(r4b(i)),r4c(i))
         i4a(2) = min(i4a(2),r4b(i),abs(r4c(i)))
      enddo
      write(13,*)

      do i=1,10
         i4a(3) = max(i4a(3),abs(r4b(i)),r4c(i))
         i4a(4) = min(i4a(4),r4b(i),abs(r4c(i)))
      enddo
      write(13,*)

      do i=1,10
         i4a(5) = max(i4a(5),abs(r4b(i)),r4c(i))
         i4a(6) = min(i4a(6),r4b(i),abs(r4c(i)))
      enddo
      write(13,*)


      do i=1,10
         i4a(7) = max(i4a(7),abs(r4b(i)),r4c(i))
         i4a(8) = min(i4a(8),r4b(i),abs(r4c(i)))
      enddo
      write(13,*)

      do i=1,10
         i4a(9) = max(i4a(9),abs(r4b(i)),r4c(i))
         i4a(10) = min(i4a(10),r4b(i),abs(r4c(i)))
      enddo

      do i=1,10
         if (i4a(i).ne.r4r(i)) goto 10
      enddo

      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',i4a
      write(6,*) ' res  ',r4r
 20   continue

      do i=1,10
         i4a1 = max(i4a1,abs(r4b(i)),r4c(i))
         i4a2 = min(i4a2,r4b(i),abs(r4c(i)))
      enddo
      i4a(1) = i4a1
      i4a(2) = i4a2

      do i=1,10
         i4a3 = max(i4a3,abs(r4b(i)),r4c(i))
         i4a4 = min(i4a4,r4b(i),abs(r4c(i)))
      enddo
      i4a(3) = i4a3
      i4a(4) = i4a4

      do i=1,10
         i4a5 = max(i4a5,abs(r4b(i)),r4c(i))
         i4a6 = min(i4a6,r4b(i),abs(r4c(i)))
      enddo
      i4a(5) = i4a5
      i4a(6) = i4a6

      do i=1,10
         i4a7 = max(i4a7,abs(r4b(i)),r4c(i))
         i4a8 = min(i4a8,r4b(i),abs(r4c(i)))
      enddo
      i4a(7) = i4a7
      i4a(8) = i4a8

      do i=1,10
         i4a9 = max(i4a9,abs(r4b(i)),r4c(i))
         i4a10 = min(i4a10,r4b(i),abs(r4c(i)))
      enddo
      i4a(9) = i4a9
      i4a(10) = i4a10

      do i=1,10
         if (i4a(i).ne.r8r(i)) goto 30
      enddo

      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',i4a
      write(6,*) ' res  ',r4r
 40   continue
      end
