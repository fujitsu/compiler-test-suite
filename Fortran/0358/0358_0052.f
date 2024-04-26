      call subc8()
      end

      subroutine subc8()
      complex*8 a(20)/20*0/,b(20),c(20)
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/
      real*8  r8(20)/20*3/

      do i=1,20
         b(i) = cmplx(i,-i)
         c(i) = b(i)
      enddo

      do i=1,20
         a(i) = b(list(i)) + 2 + r8(i)
      enddo
      write(6,*) a

      do i=1,20
         a(list(i)) = c(i) + 3 + r8(i)
      enddo
      write(6,*) a
      end
