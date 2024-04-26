      integer*8 i8a(16),i8b(16),i8c(16),i8d(16)
      integer*8 nn
      nn = ifunc(4)

      do i=1,16
         i8a(i) = nn
      enddo   
      res = isub1(i8a,1)
      if (res .eq. 1) stop 1

      do i=1,16
         i8b(i) = 4
      enddo   

      res = isub1(i8b,1)
      if (res .eq. 1) stop 2

      do i=1,16
         i8c(i) = i
      enddo   
      res = isub1(i8c,2)
      if (res == 1) stop 3

      do i=1,16
         i8d(i) = i8b(4)
      enddo  
      res = isub1(i8d,1)
      if (res == 1) stop 4
      
      write(6,*) ' ok '
      end

      integer function ifunc(nn)
      ifunc = nn
      return
      end


      integer function isub1(i8,n)
      integer*8 i8(16)
      isub1 = 0
      do i=1,16
         if (n .eq.1) then
            if (i8(i).ne.4) then
               write(6,*) i8
               isub1 = 1
               return
            endif
         else
            if (i8(i).ne.i) then
               write(6,*) i8
               isub1 = 1
               return
            endif
         endif
      enddo

      return 
      end
