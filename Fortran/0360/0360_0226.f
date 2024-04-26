      real*4 r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*4 r4aj,r4dj
      real*8 r8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*8 r8aj,r8dj
      data r4aj,r4dj,r8aj,r8dj/4*0/

      do j=1,10
         do i=1,10
            r4aj = max(r4aj,r4b(i))
            r4dj = min(r4dj,r4b(i))
         enddo
      enddo
      

      if (r4aj.ne.29 .or. r4dj .ne. -13) goto 10
      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) r4aj
      write(6,*) r4dj
 20   continue

      do j=1,10
         do i=1,10
            r8aj = max(r8aj,r8b(i))
            r8dj = min(r8dj,r8b(i))
         enddo
      enddo

      do i=1,10
         if (r8aj.ne.29 .or. r8dj.ne. -13) goto 30
      enddo
      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) r8aj
      write(6,*) r8dj
 40   continue

      end
