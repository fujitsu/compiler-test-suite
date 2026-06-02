  integer::a(2,3) /1,2, 2,3, 3,4/
  integer::b(3,2) /1,2,3, 2,3,4 /
  integer::x(2)   /1,2/
  integer::y(3)   /1,2,3/
  integer::ab1(2,2)=0,xa1(3)=0,ay1(2)=0
  integer::ab2(2,2)=0,xa2(3)=0,ay2(2)=0
  integer::ab3(2,2)=0,xa3(3)=0,ay3(2)=0

  call sub1(ab1,ab2,ab3,a,b)
  if ( any( (/ab1/) /= (/9,12,12,16/) ) ) print *,"fail"
  if ( any( (/ab2/) /= (/ab3/) ) ) print *,"fail"
!$omp parallel
  call sub2(xa1,xa2,xa3,a,x)
!$omp end parallel
  if ( any( xa1 /= (/4,6,8/) ) ) print *,"fail"
  if ( any( xa2 /= xa3 ) ) print *,"fail"
  call sub3(ay1,ay2,ay3,a,y)
  if ( any( ay1 /= (/9,12/) ) ) print *,"fail"
  if ( any( ay2 /= ay3 ) ) print *,"fail"
  print *,'pass'
  end

  subroutine sub1(ab1,ab2,ab3,a,b)
  integer::ab1(2,2),ab2(2,2),ab3(2,2),a(2,3),b(3,2)
!$omp parallel
!$omp workshare
  forall (i=1:2)
    forall (j=1:2)
      forall (k=1:3)
        ab1(j,i) = a(j,k) * b(k,i) + ab1(j,i)
      end forall
    end forall
  end forall
!$omp end workshare
!$omp do
  do i=1,2
    do j=1,2
      do k=1,3
        ab2(j,i) = a(j,k) * b(k,i) + ab2(j,i)
      end do
    end do
  end do
!$omp enddo
!$omp workshare
  ab3 = matmul(a,b)
!$omp end workshare
!$omp end parallel
  end subroutine

  subroutine sub2(xa1,xa2,xa3,a,x)
  integer::xa1(3),xa2(3),xa3(3),a(2,3),x(2)
!$omp workshare
  forall (i=1:3)
    forall (j=1:2)
      xa1(i) = x(j) * a(j,i) + xa1(i)
    end forall
  end forall
!$omp end workshare
!$omp do
  do i=1,3
    do j=1,2
      xa2(i) = x(j) * a(j,i) + xa2(i)
    end do
  end do
!$omp end do
!$omp workshare
  xa3 = matmul(x,a)
!$omp end workshare
  end subroutine 

  subroutine sub3(ay1,ay2,ay3,a,y)
  integer::ay1(2),ay2(2),ay3(2),a(2,3),y(3)
!$omp parallel
!$omp workshare
  forall (i=1:2)
    forall (j=1:3)
      ay1(i) = a(i,j) * y(j) + ay1(i)
    end forall
  end forall
!$omp end workshare
!$omp do
  do i=1,2
    do j=1,3
      ay2(i) = a(i,j) * y(j) + ay2(i)
    end do
  end do
!$omp end do
!$omp workshare
  ay3 = matmul(a,y)
!$omp end workshare
!$omp end parallel
  end subroutine
