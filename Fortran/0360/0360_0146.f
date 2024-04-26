      integer*8 a(16)/16*0/,c(16)/16*4/
      integer*8 b(16)/1,-2,-3,4,-5,-16,-9,8,7,6,1,8,20,-2,4,5/
      integer*8 res1(16)/1,2,3,4,5,16,9,8,7,6,1,8,20,2,4,5/
      integer*8 res2(16)/4,-4,-4,4,-4,-4,-4,4,4,4,4,4,4,-4,4,4/
      integer*8 res3(16)/3,6,7,0,9,20,13,0,0,0,3,0,0,6,0,0/
      integer*8 res4(16)/4,4,4,4,4,4,4,8,7,6,4,8,20,4,4,5/
      integer*8 res5(16)/1,-2,-3,4,-5,-16,-9,4,4,4,1,4,4,-2,4,4/

      do i=1,16
         a(i) = abs(b(i))
      enddo   

      if (isub(a,res1) .eq.1) stop 1

      do i=1,16
         a(i) = sign(c(i),b(i))
      enddo   
      if (isub(a,res2) .eq.1) stop 2

      do i=1,16
         a(i) = dim(c(i),b(i))
      enddo   
      if (isub(a,res3) .eq.1) stop 3

      do i=1,16
         a(i) = max(c(i),b(i))
      enddo   
      if (isub(a,res4) .eq.1) stop 4

      do i=1,16
         a(i) = min(c(i),b(i))
      enddo   
      if (isub(a,res5) .eq.1) stop 5

      write(6,*) ' ok '
      end

      integer function isub(i8,res)
      integer*8 i8(16),res(16)
      isub = 0
      do i=1,16
         if (i8(i).ne.res(i)) then
            write(6,*) i8
            write(6,*) res
            isub = 1
            return
         endif
      enddo
      return
      end
