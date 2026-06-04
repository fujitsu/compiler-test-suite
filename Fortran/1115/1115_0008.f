      subroutine sub(a,b,m,x)
      real*8 a(m),b(m),x(3,m)
!ocl loop_fission_target
!ocl loop_part_simd
!ocl loop_fission_threshold(10)
      do i=2,m
         x(1,i) = x(1,i) + 1
!ocl prefetch_write(x(2,i))
         x(2,i) = x(2,i) + 2
         x(3,i) = x(3,i) + 3
         b(i) = b(i-1) + 4
         a(i) = b(i) + 5
      enddo
      end

      real*8 a(10),b(10),x(3,10)
      do i=1,10
         a(i) = i
         b(i) = i*2
         x(1,i) = i*3
         x(2,i) = i*4
         x(3,i) = i*5
      enddo
      call sub(a,b,10,x)
      write(6,*) a
      write(6,*)
      write(6,*) b
      write(6,*)
      write(6,*) x
      end
