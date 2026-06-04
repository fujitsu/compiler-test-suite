      subroutine sub(a,b,m,x,y,z)
      real*8 a(m),b(m),x(m),y(m),z(m)
!ocl loop_fission_target
!ocl loop_part_simd
!ocl loop_fission_threshold(1)
      do i=2,m
         x(i) = sin(x(i)) + x(i)
         y(i) = 2
         z(i) = 3
         a(i) = b(i) + 5
         b(i) = b(i-1) + 4
      enddo
      end

      real*8 a(10),b(10),x(10),y(10),z(10)
      do i=1,10
         a(i) = i
         b(i) = i*2
         x(i) = i*3
         y(i) = i*4
         z(i) = i*5
      enddo
      call sub(a,b,10,x,y,z)
      write(6,*) a
      write(6,*)
      write(6,*) b
      write(6,*)
      write(6,*) x
      write(6,*)
      write(6,*) y
      write(6,*)
      write(6,*) z
      end
