call sub (2,3)
print *,'pass'
end
  subroutine sub (m,n)
  integer::a(m,n)
  integer::b(n,m)
  integer::x(m)
  integer::y(n)
  integer::ab1(m,m),xa1(n),ay1(m)
  integer::ab2(m,m),xa2(n),ay2(m)
  integer::ab3(m,m),xa3(n),ay3(m)
  a=reshape((/1,2,2,3,3,4/),(/2,3/))
  b=reshape((/1,2,3,2,3,4/),(/3,2/))
  x=(/1,2/)
  y=(/1,2,3/)
  ab1=0
  ab2=0
  ab3=0
  xa1=0
  xa2=0
  xa3=0
  ay1=0
  ay2=0
  ay3=0
!$omp parallel
!$omp workshare
  forall (i=1:m)
    forall (j=1:m)
      forall (k=1:n)
        ab1(j,i) = a(j,k) * b(k,i) + ab1(j,i)
      end forall
    end forall
  end forall
!$omp end workshare
!$omp do
  do i=1,m
    do j=1,m
      do k=1,n
        ab2(j,i) = a(j,k) * b(k,i) + ab2(j,i)
      end do
    end do
  end do
!$omp enddo
!$omp workshare
  ab3 = matmul(a,b)
!$omp end workshare
!$omp single
  if ( any( (/ab1/) /= (/9,12,12,16/) ) ) print *,"fail"
  if ( any( (/ab2/) /= (/ab3/) ) ) print *,"fail"
!$omp end single

!$omp workshare
  forall (i=1:n)
    forall (j=1:m)
      xa1(i) = x(j) * a(j,i) + xa1(i)
    end forall
  end forall
!$omp end workshare
!$omp do
  do i=1,n
    do j=1,m
      xa2(i) = x(j) * a(j,i) + xa2(i)
    end do
  end do
!$omp end do
!$omp workshare
  xa3 = matmul(x,a)
!$omp end workshare
!$omp sections
  if ( any( xa1 /= (/4,6,8/) ) ) print *,"fail"
!$omp section
  if ( any( xa2 /= xa3 ) ) print *,"fail"
!$omp end sections

!$omp workshare
  forall (i=1:m)
    forall (j=1:n)
      ay1(i) = a(i,j) * y(j) + ay1(i)
    end forall
  end forall
!$omp end workshare
!$omp do
  do i=1,m
    do j=1,n
      ay2(i) = a(i,j) * y(j) + ay2(i)
    end do
  end do
!$omp end do
!$omp workshare
  ay3 = matmul(a,y)
!$omp end workshare
!$omp critical
  if ( any( ay1 /= (/9,12/) ) ) print *,"fail"
  if ( any( ay2 /= ay3 ) ) print *,"fail"
!$omp end critical
!$omp end parallel
  end
