      integer*4 i4a(16)/16*0/,i4b(16),i4c(16)/16*5/
      integer*4 res1(16),res2(16),res3(16),res4(16)
      integer*4 res5(16),res6(16)
      data i4b/1,3,5,7,9,2,4,6,8,10,3*3,3*5/
      data res1/0,0,1,1,1,0,0,1,1,1,0,0,0,1,1,1/
      data res2/0,0,0,1,1,0,0,1,1,1,0,0,0,0,0,0/
      data res3/1,1,1,0,0,1,1,0,0,0,1,1,1,1,1,1/
      data res4/1,1,0,0,0,1,1,0,0,0,1,1,1,0,0,0/
      data res5/0,0,1,0,0,0,0,0,0,0,0,0,0,1,1,1/
      data res6/1,1,0,1,1,1,1,1,1,1,1,1,1,0,0,0/
      do i=1,16
         i4a(i) = i4b(i) .ge. i4c(i)
      enddo
      if (isub(i4a,res1) .eq.1) stop 1

      do i=1,16
         i4a(i) = i4b(i) .gt. i4c(i)
      enddo
      if (isub(i4a,res2) .eq.1) stop 2

      do i=1,16
         i4a(i) = i4b(i) .le. i4c(i)
      enddo
      if (isub(i4a,res3) .eq.1) stop 3

      do i=1,16
         i4a(i) = i4b(i) .lt. i4c(i)
      enddo
      if (isub(i4a,res4) .eq.1) stop 4
      do i=1,16
         i4a(i) = i4b(i) .eq. i4c(i)
      enddo
      if (isub(i4a,res5) .eq.1) stop 5
      do i=1,16
         i4a(i) = i4b(i) .ne. i4c(i)
      enddo
      if (isub(i4a,res6) .eq.1) stop 6

      write(6,*) ' ok '
      end


      integer function isub(calc,res)
      integer calc(16),res(16)
      isub = 0
      do i=1,16
         if (calc(i).ne.res(i)) then
            write(6,*) calc
            write(6,*) res
            isub = 1
            return
         endif
      enddo
      return
      end
