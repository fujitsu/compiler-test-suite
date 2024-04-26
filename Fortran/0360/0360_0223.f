      real*4 r4a(10)/10*2/,r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*4 r4d(10)/10*2/
      real*8 r8a(10)/10*2/,r8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*8 r8d(10)/10*2/

      do j=1,10
         do i=1,10
            r4a(j) = max(r4a(j),r4b(i))
            r4d(j) = min(r4d(j),r4b(i))
         enddo
      enddo
      
      do i=1,10
         if (r4a(i).ne.29 .or. r4d(i).ne. -13) goto 10
      enddo
      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) r4a
      write(6,*) r4d
 20   continue

      do j=1,10
         do i=1,10
            r8a(j) = max(r8a(j),r8b(i))
            r8d(j) = min(r8d(j),r8b(i))
         enddo
      enddo

      do i=1,10
         if (r8a(i).ne.29 .or. r8d(i).ne. -13) goto 30
      enddo
      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) r8a
      write(6,*) r8d
 40   continue

      end
