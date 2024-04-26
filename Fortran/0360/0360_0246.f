      integer*4 i4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer*4 i4aj,i4dj
      integer*8 i8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer*8 i8aj,i8dj
      data i4aj,i4dj,i8aj,i8dj/4*0/

      do j=1,10
         do i=1,10
            i4aj = max(i4aj,i4b(i))
            i4dj = min(i4dj,i4b(i))
         enddo
      enddo
      

      if (i4aj.ne.29 .or. i4dj .ne. -13) goto 10
      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) i4aj
      write(6,*) i4dj
 20   continue

      do j=1,10
         do i=1,10
            i8aj = max(i8aj,i8b(i))
            i8dj = min(i8dj,i8b(i))
         enddo
      enddo

      do i=1,10
         if (i8aj.ne.29 .or. i8dj.ne. -13) goto 30
      enddo
      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) i8aj
      write(6,*) i8dj
 40   continue

      end
