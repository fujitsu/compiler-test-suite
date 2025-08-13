      real*4 r4a(10)/10*2/,r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/,rr/2/
      real*4 r4c(10)/10*9/,r4r(10)/29,-2,29,-2,30,2,30,-13,29,-13/
      real*8 r8a(10)/10*2/,r8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*8 r8c(10)/10*9/,r8r(10)/29,-2,29,-2,30,2,30,-13,9,-13/
      real*8 rr8/2/

      n = ifunc(10)

      do i=1,n
         r4a(1) = max(r4a(1),abs(r4b(i)),2.0)
         r4a(2) = min(r4a(2),-2.0,abs(r4c(i)))
      enddo
      write(20,*)

      do i=1,n
         r4a(3) = max(r4a(3),abs(r4b(i)),rr)
         r4a(4) = min(r4a(4),-rr,abs(r4c(i)))
      enddo
      write(20,*)

      do i=1,n
         r4a(5) = max(r4a(5),abs(r4b(i)),30)
         r4a(6) = min(r4a(6),30,abs(r4c(i)))
      enddo
      write(20,*)

      do i=1,n
         r4a(7) = max(r4a(7),abs(-30),r4c(i))
         r4a(8) = min(r4a(8),r4b(i),abs(-1))
      enddo
      write(20,*)

      do i=1,n
         r4a(9) = max(r4a(9),abs(r4a(1)),r4c(i))
         r4a(10) = min(r4a(10),r4b(i),abs(r4a(2)))
      enddo

      do i=1,n
         if (r4a(i).ne.r4r(i)) goto 10
      enddo

      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',r4a
      write(6,*) ' res  ',r4r
 20   continue

      do i=1,n
         r8a(1) = max(r8a(1),abs(r8b(i)),2)
         r8a(2) = min(r8a(2),-2,abs(r8c(i)))
      enddo
      write(20,*)

      do i=1,n
         r8a(3) = max(r8a(3),abs(r8b(i)),rr8)
         r8a(4) = min(r8a(4),-rr8,abs(r8c(i)))
      enddo
      write(20,*)

      do i=1,n
         r8a(5) = max(r8a(5),abs(r8b(i)),30)
         r8a(6) = min(r8a(6),30,abs(r8c(i)))
      enddo
      write(20,*)

      do i=1,n
         r8a(7) = max(r8a(7),abs(-30),r8c(i))
         r8a(8) = min(r8a(8),r8b(i),abs(-1))
      enddo
      write(20,*)

      do i=1,n
         r8a(9) = max(r8a(9),abs(r8b(1)),r8c(i))
         r8a(10) = min(r8a(10),r8b(i),abs(r8c(2)))
      enddo

      do i=1,n
         if (r8a(i).ne.r8r(i)) goto 30
      enddo

      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',r8a
      write(6,*) ' res  ',r8r
 40   continue
      end

      integer function ifunc(nn)
      ifunc = nn
      return
      end
