integer,parameter :: j1=1,j2=2,j4=4,k1=-1,k2=-2,k4=-4
integer:: a(2,4) /11,21,12,22,13,23,14,24/
integer:: b(2,4) /11,21,12,22,13,23,14,24/
call test (a,b,j1,j2,j4,k1,k2,k4)
print *,'pass'
end

  subroutine test (a,b,j1,j2,j4,k1,k2,k4)
  integer j1,j2,j4,k1,k2,k4
  integer a(j2,j4),b(j2,j4)

!$omp parallel workshare
  forall (ij=1:2)
  forall (j=1:4)
  forall (i=1:2)
    a(j1+j2+j4+k1+k2+k4+i,j1+k1+j) = a(j1+j2+j4+k1+k2+k4+i,j1+k1+j) + 2
  end forall
  end forall
  end forall
!$omp end parallel workshare

  do ij=1,2
  do j=1,4
  do i=1,2
    b(j1+j2+j4+k1+k2+k4+i,j1+k1+j) = b(j1+j2+j4+k1+k2+k4+i,j1+k1+j) + 2
  end do
  end do
  end do

  if ( any((a-b)/=reshape((/(-2,m=1,8)/),(/2,4/)) ) )print *,"fail"
  end
