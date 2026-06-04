      type element
         integer, pointer :: p
      end type
      type (element) q(5,5)

      integer, target, dimension(5,5)::t

      n = 5
      do i = 1,5
      do j = 1,5
         q(i,j)%p => t(i,j)
      enddo 
      enddo 

      forall (i = 2:5, j = 2:5)
         q(i,j)%p => q(i-1,j-1)%p
      end forall

      do i = 1, 5
      do j = 1, 5
         t(i,j) = i
      enddo
      enddo
      do j=1,5
      write(8,*)q(1,j)%p
      write(8,*)q(2,j)%p
      write(8,*)q(3,j)%p
      write(8,*)q(4,j)%p
      write(8,*)q(5,j)%p
      end do
      call chk
      print *,'pass'
      end
      subroutine chk
      integer x(5)
      rewind 8
      read(8,*) x; if (any(x/=(/1,2,3,4,5/)))print *,'error-1'
      read(8,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-2'
      read(8,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-3'
      read(8,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-4'
      read(8,*) x; if (any(x/=(/1,1,2,3,4/)))print *,'error-5'
      end
