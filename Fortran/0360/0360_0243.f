      integer*4 i4a(10)/10*2/
      integer*4 i4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer*4 i4d(10)/10*2/
      integer*8 i8a(10)/10*2/
      integer*8 i8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer*8 i8d(10)/10*2/

      do j=1,10
         do i=1,10
            i4a(j) = max(i4a(j),i4b(i))
            i4d(j) = min(i4d(j),i4b(i))
         enddo
      enddo
      
      do i=1,10
         if (i4a(i).ne.29 .or. i4d(i).ne. -13) goto 10
      enddo
      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) i4a
      write(6,*) i4d
 20   continue

      do j=1,10
         do i=1,10
            i8a(j) = max(i8a(j),i8b(i))
            i8d(j) = min(i8d(j),i8b(i))
         enddo
      enddo

      do i=1,10
         if (i8a(i).ne.29 .or. i8d(i).ne. -13) goto 30
      enddo
      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) i8a
      write(6,*) i8d
 40   continue

      end
