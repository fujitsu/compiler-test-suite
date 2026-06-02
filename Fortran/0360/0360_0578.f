      integer*8 i8a(16),i8b(16),i8c(16),ii8/3/
      logical*8 l8a(16),l8b(16),l8c(16),ll8/.true./

      do i=1,16
         i8b(i) = i
         i8c(i) = i
         l8b(i) = mod(i,2).eq.0
         l8c(i) = mod(i,2).eq.0
      enddo

      do i=1,16
         i8a(i)=i8b(i)
      enddo

      do i=1,16
         if (i8a(i).ne.i8c(i)) then
            write(6,*) i8a
            write(6,*) i8c
            stop 1
         endif
      enddo

      do i=1,16
         l8a(i)=l8b(i)
      enddo
      do i=1,16
         if (l8a(i).neqv.l8c(i)) then
            write(6,*) l8a
            write(6,*) l8c
            stop 2
         endif
      enddo

      do i=1,16
         i8a(i)=2_8
      enddo
      do i=1,16
         if (i8a(i).ne.2) then
            write(6,*) i8c
            stop 3
         endif
      enddo

      do i=1,16
         l8a(i)=.false._8
      enddo
      do i=1,16
         if (l8a(i).neqv. .false.) then
            write(6,*) i8c
            stop 4
         endif
      enddo

      do i=1,16
         i8a(i)=ii8
      enddo
      do i=1,16
         if (i8a(i).ne.3) then
            write(6,*) i8a
            stop 5
         endif
      enddo

      do i=1,16
         l8a(i)=ll8
      enddo
      do i=1,16
         if (l8a(i).neqv. .true.) then
            write(6,*) i8a
            stop 6
         endif
      enddo
      write(6,*) ' ok '
      end
