      subroutine sub(a,b,m,x)
      real*8 a(m),b(m),x(3,m)
!ocl loop_fission_target
!ocl loop_part_simd
!ocl loop_fission_threshold(10)
      do i=2,m
!ocl simd_listv
         if (b(i) .gt. 0) then
            a(i) = b(i) + 5
         endif
!         x(1,i) = x(1,i) + 1
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
      end
