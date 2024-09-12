      subroutine sub2006(a)
      integer*8 a(5,2),i,j,k,l
      do i=1,10
        print *,((a(j,k),j=k,5_8),k=1_8,2_8)
      end do
      end subroutine

      program main
      integer*8 a(5,2)
      data a/1,2,3,4,5,6,7,8,9,10/
      call sub2006(a)
      end 
