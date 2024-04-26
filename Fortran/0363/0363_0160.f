      program main
      real*8 p(65),q(65)
      integer*4 ix,res
      call init(p,q,ix,res,65)
      do i=1,2
        call test(p,q,ix,65)
      enddo
      if(ix .eq. res) then
         write (6,*) "OK "
      else
         write (6,*) "NG "
      endif
      end

      subroutine init(p,q,ix,res,n1)
      real*8 p(n1),q(n1)
      integer*4 ix,res
      ix = 0
      res = n1 * 2

      do i=1,65
        p(i) = i
        q(i) = i
      enddo
      end

      subroutine test(p,q,ix,n1)
      real*8 p(n1),q(65)
      integer*4 ix
      
      do i=1,65
         ix = p(i)+q(i)
      enddo
      
      end
