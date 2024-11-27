program main

  implicit none
  integer            :: i, j, k
  integer            :: ndim
  real, allocatable  :: a(:,:), b(:,:), c(:,:)

  real :: tstart, tend, tstartd, tendd, ratio

  integer,parameter::inum=11
  integer::parm(inum)=(/100,150,200,250,300,400,500,511,600,700,800/)
  integer::kk

   call dummy
do kk=1,inum
  ndim=parm(kk)
  print *,'#',ndim,'#'
  ALLOCATE( a(ndim,ndim), b(ndim,ndim), c(ndim,ndim) )

  do j = 1, ndim
     do i = 1, ndim
        a(i,j) = i+j
     end do
  end do

  b = a

  call cpu_time(tstart)

  c = matmul(a,b)

  call cpu_time(tend)
  WRITE(*,*) 'intrinsic time was ', tend-tstart

  print*, 'c(ndim,ndim) =', c(ndim,ndim)

  call cpu_time(tstartd)

  do j = 1, ndim
     do i = 1, ndim
        c(i,j)=0.0
        do k = 1, ndim
           c(i,j) = c(i,j) + a(i,k)*b(k,j)
        end do
     end do
  end do

  call cpu_time(tendd)
  WRITE(*,*) ' doloop time was ', tendd-tstartd, ' seconds'

  print*,'c(ndim,ndim) = ',c(ndim,ndim)

  ratio = (tend-tstart)/(tendd-tstartd)
  WRITE(*,*) ' ratio is ', ratio
  open( unit=11, &
       file='matmul.tim', &
       form='formatted', &
       status='unknown', &
       position='append' )

  write(11,'(a, i6, 3f9.2)') 'NDIM = ', ndim, tend-tstart,  tendd-tstartd, ratio

  close(11)
  deallocate(a,b,c)
end do
  stop
end program main
subroutine dummy
print *,'pass'
stop
end
