
      integer isum1(1),isum2
      common /sbm_area/isum1

      isum1(1) = 0
      isum2 = 0

      do i=1,64
         isum1(1) = isum1(1) + i
      enddo

      if (isum1(1) .eq. 2080 ) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) 2080 , isum1(1)
      endif

      do i=1,64
         isum2 = isum2 + i
      enddo

      if (isum2 .eq. 2080 ) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) 2080 , isum2
      endif
      end

