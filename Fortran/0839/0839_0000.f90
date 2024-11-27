program simple
  implicit none
  integer,parameter:: N = 100
  integer::i,j,k,l,h
!$omp do collapse(4)
  do i=1,N
    do j=1,N
      do k=j,N
        do l=1,N
          h=h+1
        end do
      end do
    end do
  end do
!$omp end do
!$omp do collapse(4)
  do i=1,N
    do j=1,N
      do k=j,N
        do l=1,N
          h=h+1
        end do
      end do
    end do
  end do
!$omp end do
if(h==-1852789045) then
  print *, 'pass'
else
  print *, 'h=',h
endif
end program
