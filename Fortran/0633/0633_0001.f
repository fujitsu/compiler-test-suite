      program main
      real*4,dimension(10,10)::r4_a
      real*8,allocatable,dimension(:)::r8_a,r8_b
      integer*2,dimension(10)::i2_a
      integer,dimension(10)::i4_a,i4_b
      integer              ::err/0/
      common /blk/i4_a,i4_b

      m = cos(0.0)*10
      allocate (r8_a(10) ,r8_b(10))
      do i=1,10
         r8_a(i) = i
      end do
      r8_b(int(r8_a)) = r8_a

      r4_a( int(r8_a) ,int(r8_b) ) = 0
      i4_a(int(r8_a)) = int(r8_a)
      i4_b(i4_a)      = i4_a

      call sub1(r4_a,m) 

      i2_a = i4_b
      i4_a(i4_b(1:m/2))   = i4_a(i4_b(1:m/2)) + i4_a(i2_a(m:6:-1))
      i4_a(m/2+1:i4_b(m)) = i4_a(i2_a(1:5)) * i4_a(i2_a(m:6:-1))

      do i=1,10
         if (i4_a(i) /= 0) err=1
      end do
      if (err .eq. 0) then
         write(6,*)'*** ok ***'
      else
         write(6,*)'*** ng ***'
      end if
      deallocate (r8_a ,r8_b)

      stop
      end

      subroutine sub1(r4_a ,m)
      real*4,dimension(m)::r4_a
      real*4,dimension(10)::r1_b/0,1,2,3,4,5,6,7,8,9/
      real*4                pr1_b
      pointer (p ,pr1_b)
      common /blk/i4_a(10),i4_b(10)

      r4_a = 0
      p = loc (r1_b(1))
      p = p + 4*9
      i4_a(i4_b(int(r1_b(1)+1):int(pr1_b+1))) = 
     *     i4_a(i4_a(10:1:-1))-i4_b(i4_a(int(r1_b(2)):int(r1_b(10))+1))
      return
      end
