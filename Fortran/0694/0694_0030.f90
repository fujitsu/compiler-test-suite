module m1
      type element
         integer, pointer :: p
      end type
contains
subroutine s(i2,i5,q,t)
      type (element) q(5,5,2)
      integer, target, dimension(5,5,2)::t

      do i = 1,5
      do j = 1,5
      do k = 1,2
         q(i,j,k)%p => t(i,j,k)
      enddo 
      enddo 
      enddo 

      forall (i = i2:i5, j = i2:i5,k=1:2)
         q(i,j,k)%p => q(i-1,j-1,k)%p
      end forall

      do i = 1, 5
      do j = 1, 5
      do k = 1, 2
         t(i,j,k) = i
      enddo
      enddo
      enddo
      do j=1,5
      write(19,*)q(1,j,2)%p
      write(19,*)q(2,j,2)%p
      write(19,*)q(3,j,2)%p
      write(19,*)q(4,j,2)%p
      write(19,*)q(5,j,2)%p
      end do
      call chk
end subroutine
      end
use m1
      type (element) q(5,5,2)
      integer, target, dimension(5,5,2)::t
call s(2,5,q,t)
      print *,'pass'
      end
      subroutine chk
      integer x(5)
      rewind 19
      read(19,*) x; if (any(x/=(/1,2,3,4,5/)))print *,'error-1'
      read(19,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-2'
      read(19,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-3'
      read(19,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-4'
      read(19,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-5'
      end
