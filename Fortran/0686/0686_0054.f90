integer,parameter :: j1=1,j2=2,j4=4,k1=-1,k2=-2,k4=-4
integer:: a(2,4) /11,21,12,22,13,23,14,24/
integer:: b(2,4) /11,21,12,22,13,23,14,24/
call test (a,b,j1,j2,j4,k1,k2,k4)
print *,'pass'
end

  subroutine test (a,b,j1,j2,j4,k1,k2,k4)
  integer j1,j2,j4,k1,k2,k4,s1
  integer a(j2,j4),b(j2,j4)

  s1 = 0
!$omp parallel workshare
  forall (ij=1:5)
  s1 = s1 + ij
  forall (j=1:3)
  forall (i=1:2)
    a(j1+j2+j4+k1+k2+k4+i,j1+k1+j) = a(j1+j2+j4+k1+k2+k4+i,j1+k1+j+1) + 2
  end forall
  end forall
  end forall
!$omp end parallel workshare

  do j=1,3
  do i=1,2
    b(j1+j2+j4+k1+k2+k4+i,j1+k1+j) = b(j1+j2+j4+k1+k2+k4+i,j1+k1+j+1) + 2
  end do
  end do

  if ( any((a-b)/=reshape((/(0,m=1,8)/),(/2,4/)) ) )print *,"fail"
  if ( s1 .ne. 5 ) print *,"fail"

  end
