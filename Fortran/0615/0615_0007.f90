integer omp_get_num_threads
integer omp_get_thread_num
type test
  integer,pointer:: x(:)
  real    y
end type
type(test),pointer:: a(:,:,:,:,:,:,:)
type(test),target::  b(2,3,4,5,6,7,8)
integer*8 addr(128), addr2(128)
integer i,j,k,l,m,n,o
integer err
integer,target:: thread_num
integer num_threads

thread_num = 0
num_threads = 1
err = 0

!$omp parallel private(a, thread_num)
!$ thread_num = omp_get_thread_num()
!$omp single
!$ num_threads = omp_get_num_threads()
  do o=1, 8
    do n=1, 7
      do m=1, 6
        do l=1, 5
          do k=1, 4
            do j=1, 3
              do i=1, 2
                allocate(b(i,j,k,l,m,n,o)%x(1))
                b(i,j,k,l,m,n,o)%x = thread_num+i+j+k+l+m+n+o
                b(i,j,k,l,m,n,o)%y = sin(real(i+j+k+l+m+n+o))
              end do
            end do
          end do
        end do
      end do
    end do
  end do
  a => b
!$omp end single copyprivate(a)
!$omp do
  do o=1, 8
    do n=1, 7
      do m=1, 6
        do l=1, 5
          do k=1, 4
            do j=1, 3
              do i=1, 2
               if((a(i,j,k,l,m,n,o)%x(1) .ne. b(i,j,k,l,m,n,o)%x(1)) .or. &
                  (a(i,j,k,l,m,n,o)%y .ne. b(i,j,k,l,m,n,o)%y)) then
!$omp atomic
                  err = err+1
                end if
              end do
            end do
          end do
        end do
      end do
    end do
  end do
!$omp end do
  addr(thread_num+1) = loc(a(1,1,1,1,1,1,1)%y)
  addr2(thread_num+1) = loc(a(1,1,1,1,1,1,1)%x)
!$omp barrier
!$omp do
  do o=1, 8
    do n=1, 7
      do m=1, 6
        do l=1, 5
          do k=1, 4
            do j=1, 3
              do i=1, 2
                deallocate(b(i,j,k,l,m,n,o)%x)
              end do
            end do
          end do
        end do
      end do
    end do
  end do
!$omp end do
!$omp end parallel

if(num_threads .gt. 1) then
  do i=1, num_threads-1
    do j=i+1, num_threads
      if((addr(i) .ne. addr(j)) .or. (addr2(i) .ne. addr2(j))) then
        print *, addr(i), addr(j)
        print *, addr2(i), addr2(j)
      end if
    end do
  end do
end if

if(err .ne. 0) then
  print *, 'NG', err
else
  print *, 'pass'
end if

end

