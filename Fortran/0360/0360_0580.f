      logical l(16),res5(16)
      integer*8 a(16)/16*0/
      integer*8 b(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      integer*8 c(16)/16*4/,res6(16)
      integer*8 res1(16),res2(16),res3(16),res4(16)
      data res2/3*0,4*4,4*0,4*4,0/
      data res3/5,6,7,4,5,6,7,12,13,14,15,12,13,14,15,20/
      data res4/1,2,3,0,1,2,3,8,9,10,11,8,9,10,11,16/
      data res5/16*.false./
      data res6/5,6,7,0,1,2,3,12,13,14,15,8,9,10,11,20/
      do i=1,16
         res1(i) = -(i+1)
         if (res2(i) .ne.0) then
            res5(i) = .true.
         endif
      enddo

      do i=1,16
         a(i) = not(b(i))
      enddo

      if (isub(a,res1) .eq.1) stop 1

      do i=1,16
         a(i) = iand(b(i),c(i))
      enddo

      if (isub(a,res2) .eq.1) stop 2

      do i=1,16
         a(i) = ior(b(i),c(i))
      enddo

      if (isub(a,res3) .eq.1) stop 3

      do i=1,16
         a(i) = ieor(b(i),c(i))
      enddo

      if (isub(a,res6) .eq.1) stop 4

      do i=1,16
         a(i) = ibset(b(i),2)
      enddo
      if (isub(a,res3) .eq.1) stop 5

      do i=1,16
         a(i) = ibclr(b(i),2)
      enddo
      if (isub(a,res4) .eq.1) stop 6

      do i=1,16
         l(i) = btest(b(i),2)
      enddo


      do i=1,16
         if (l(i).neqv.res5(i)) then
            write(6,*) l
            write(6,*) res5
            stop 7
         endif
      enddo

      write(6,*) ' ok '
      end

      integer function isub(i8,res)
      integer*8 i8(16),res(16)
      isub = 0
      do i=1,16
         if (i8(i).ne.res(i)) then
            write(6,*) i8
            isub = 1
            return
         endif
      enddo
      return
      end
