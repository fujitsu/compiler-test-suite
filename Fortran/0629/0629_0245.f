      logical ans/.true./
      logical a(100,100)

      do i=1,100
        do j=1,100
          if (mod(i,2).eq.0) then
            a(i,j) = .true.
          else
            a(i,j) = .false.
          endif
        enddo
      enddo

      do i=1,100
        do j=1,100
          ans = ans .and. a(i,j)
        enddo
      enddo

      write(6,*) ans
      stop
      end
