      integer*4 i4a(10)/10*2/
      integer*4 i4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer*4 i4c(10)/10*9/
      integer*4 i4r(10)/29,-13,29,-13,29,-13,29,-13,29,-13/
      integer*8 i8a(10)/10*2/
      integer*8 i8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer*8 i8c(10)/10*9/
      integer*8 i8r(10)/29,-13,29,-13,29,-13,29,-13,29,-13/

      do i=1,10
         i4a(1) = max(i4a(1),(i4b(i)),i4c(i))
         i4a(2) = min(i4a(2),i4b(i),(i4c(i)))
      enddo
      write(23,*)

      do i=1,10
         i4a(3) = max(i4a(3),(i4b(i)),i4c(i))
         i4a(4) = min(i4a(4),i4b(i),(i4c(i)))
      enddo
      write(23,*)

      do i=1,10
         i4a(5) = max(i4a(5),(i4b(i)),i4c(i))
         i4a(6) = min(i4a(6),i4b(i),(i4c(i)))
      enddo
      write(23,*)


      do i=1,10
         i4a(7) = max(i4a(7),(i4b(i)),i4c(i))
         i4a(8) = min(i4a(8),i4b(i),(i4c(i)))
      enddo
      write(23,*)

      do i=1,10
         i4a(9) = max(i4a(9),(i4b(i)),i4c(i))
         i4a(10) = min(i4a(10),i4b(i),(i4c(i)))
      enddo

      do i=1,10
         if (i4a(i).ne.i4r(i)) goto 10
      enddo

      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',i4a
      write(6,*) ' res  ',i4r
 20   continue


      do i=1,10
         i8a(1) = max(i8a(1),(i8b(i)),i8c(i))
         i8a(2) = min(i8a(2),i8b(i),(i8c(i)))
      enddo
      write(23,*)

      do i=1,10
         i8a(3) = max(i8a(3),(i8b(i)),i8c(i))
         i8a(4) = min(i8a(4),i8b(i),(i8c(i)))
      enddo
      write(23,*)

      do i=1,10
         i8a(5) = max(i8a(5),(i8b(i)),i8c(i))
         i8a(6) = min(i8a(6),i8b(i),(i8c(i)))
      enddo
      write(23,*)


      do i=1,10
         i8a(7) = max(i8a(7),(i8b(i)),i8c(i))
         i8a(8) = min(i8a(8),i8b(i),(i8c(i)))
      enddo
      write(23,*)

      do i=1,10
         i8a(9) = max(i8a(9),(i8b(i)),i8c(i))
         i8a(10) = min(i8a(10),i8b(i),(i8c(i)))
      enddo

      do i=1,10
         if (i8a(i).ne.i8r(i)) goto 30
      enddo

      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',i8a
      write(6,*) ' res  ',i8r
 40   continue
      end
