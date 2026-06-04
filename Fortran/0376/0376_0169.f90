module m1
      type element
         integer, pointer :: p
      end type
contains
subroutine s(i2,i5,t,q)
      type (element),allocatable:: q(:,:,:)
      integer,allocatable,target,dimension(:,:,:)::t

      allocate(q(5,5,2),t(5,5,2))
      do i = 1,5
      do j = 1,5
      do k = 1,2
         q(i,j,k)%p => t(i,j,k)
      enddo
      enddo
      enddo

      forall (i = i2:i5, j = i2:i5,k=i2-1:i2)
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
      write(7,*)q(1,j,2)%p
      write(7,*)q(2,j,2)%p
      write(7,*)q(3,j,2)%p
      write(7,*)q(4,j,2)%p
      write(7,*)q(5,j,2)%p
      end do
      call chk
end subroutine s
      end
use m1
      type (element),allocatable:: q(:,:,:)
      integer, allocatable, target,dimension(:,:,:)::t
call s(2,5,t,q)
      print *,'pass'
      end
      subroutine chk
      integer x(5)
      rewind 7
      read(7,*) x; if (any(x/=(/1,2,3,4,5/)))print *,'error-1'
      read(7,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-2'
      read(7,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-3'
      read(7,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-4'
      read(7,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-5'
      end
