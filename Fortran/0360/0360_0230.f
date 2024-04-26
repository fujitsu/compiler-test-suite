      real*4 r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer i4aj,i4dj,i4a(10)/10*0/,i4d(10)/10*0/
      data i4aj,i4dj/2*0/

      do j=1,10
         do i=1,10
            i4aj = max(i4aj,r4b(i))
            i4dj = min(i4dj,r4b(i))
         enddo
      enddo
      

      if (i4aj.ne.29 .or. i4dj .ne. -13) goto 10
      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) i4aj,i4dj
 20   continue

      do j=1,10
         do i=1,10
            i4a(j) = max(i4a(j),r4b(i))
            i4d(j) = min(i4d(j),r4b(i))
         enddo
      enddo

      do i=1,10
         if (i4a(i).ne.29 .or. i4d(i).ne. -13) goto 30
      enddo
      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) i4a
      write(6,*) i4d
 40   continue

      end
