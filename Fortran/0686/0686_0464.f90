  program ompv2
  interface
    subroutine sub1(ab1,ab2,ab3,a,b,m,n)
      complex(16)::ab1(:,:),ab2(:,:),ab3(:,:),a(:,:),b(:,:)
    end subroutine
    subroutine sub2(xa1,xa2,xa3,a,x,m,n)
      complex(16)::xa1(:),xa2(:),xa3(:),a(:,:),x(:)
    end subroutine
    subroutine sub3(ay1,ay2,ay3,a,y,m,n)
      complex(16)::ay1(*),ay2(*),ay3(:),a(:,:),y(:)
    end subroutine
  end interface
  complex(16)::a(3,5)
  complex(16)::b(5,3)
  complex(16)::x(3)
  complex(16)::y(5)
  complex(16)::ab1(3,3)=(0.0q0,0.0q0),xa1(5)=(0.0q0,0.0q0),ay1(3)=(0.0q0,0.0q0)
  complex(16)::ab2(3,3)=(0.0q0,0.0q0),xa2(5)=(0.0q0,0.0q0),ay2(3)=(0.0q0,0.0q0)
  complex(16)::ab3(3,3)=(0.0q0,0.0q0),xa3(5)=(0.0q0,0.0q0),ay3(3)=(0.0q0,0.0q0)

  a(:,1)=(/(1.0q0,-1.5q0),(2.0q0,-2.5q0),(3.0q0,-3.5q0)/)
  a(:,2)=(/(2.0q0,-2.5q0),(3.0q0,-3.5q0),(4.0q0,-4.5q0)/)
  a(:,3)=(/(3.0q0,-3.5q0),(4.0q0,-4.5q0),(5.0q0,-5.5q0)/)
  a(:,4)=(/(4.0q0,-4.5q0),(5.0q0,-5.5q0),(6.0q0,-6.5q0)/)
  a(:,5)=(/(5.0q0,-5.5q0),(6.0q0,-6.5q0),(7.0q0,-7.5q0)/)
  b(:,1)=(/(1.q0,-1.q0),(2.q0,-2.q0),(3.q0,-3.q0),(4.q0,-4.q0),(5.q0,-5.q0)/)
  b(:,2)=(/(2.q0,-2.q0),(3.q0,-3.q0),(4.q0,-4.q0),(5.q0,-5.q0),(6.q0,-6.q0)/)
  b(:,3)=(/(3.q0,-3.q0),(4.q0,-4.q0),(5.q0,-5.q0),(6.q0,-6.q0),(7.q0,-7.q0)/)
  x(:)  =(/(1.q0,-1.q0),(2.q0,-2.q0),(3.q0,-3.q0)/)
  y(:)  =(/(1.q0,-1.q0),(2.q0,-2.q0),(3.q0,-3.q0),(4.q0,-4.q0),(5.q0,-5.q0)/)
  m=3
  n=5
  call sub1(ab1,ab2,ab3,a,b,m,n)  
  if ( any( (/ab1/) /= (/ab2/) ) ) print *,"fail"
  if ( any( (/ab2/) /= (/ab3/) ) ) print *,"fail"
!$omp parallel
  call sub2(xa1,xa2,xa3,a,x,m,n)  
!$omp end parallel
  if ( any( xa1 /= xa2 ) ) print *,"fail"
  if ( any( xa2 /= xa3 ) ) print *,"fail"
  call sub3(ay1,ay2,ay3,a,y,m,n)  
  if ( any( ay1 /= ay2 ) ) print *,"fail"
  if ( any( ay2 /= ay3 ) ) print *,"fail"
  print *,'pass'
  end

  subroutine sub1(ab1,ab2,ab3,a,b,m,n)
  complex(16)::ab1(:,:),ab2(:,:),ab3(:,:),a(:,:),b(:,:)
  do i=1,m
    do j=1,m
      do k=1,n
        ab1(j,i) = a(j,k) * b(k,i) + ab1(j,i)
      end do
    end do
  end do
!$omp parallel
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
!$omp end parallel
  end subroutine

  subroutine sub2(xa1,xa2,xa3,a,x,m,n)
  complex(16)::xa1(:),xa2(:),xa3(:),a(:,:),x(:)
!$omp single
  do i=1,n
    do j=1,m
      xa1(i) = x(j) * a(j,i) + xa1(i)
    end do
  end do
!$omp end single
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
  end subroutine 

  subroutine sub3(ay1,ay2,ay3,a,y,m,n)
  complex(16)::ay1(*),ay2(*),ay3(:),a(:,:),y(:)
  do i=1,m
    do j=1,n
      ay1(i) = a(i,j) * y(j) + ay1(i)
    end do
  end do
!$omp parallel
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
!$omp end parallel
  end subroutine
