subroutine sub1(ke,js,je,is,ie)
  integer::ke,js,je,is,ie
  integer::a(10,10,10),b(10,10,10),gz(10)
  integer::i,j,k
  a=0
  b=1
  gz=1
j=1
k=2
  !$omp parallel default(none) shared(a,b,gz,ke,js,je,is,ie)
  !$omp do
  do k=2,ke
     do j=js,je
        do i=is,ie
           a(i,k,j) = b(i,j,k-1)
        end do
     end do
  end do
  !$omp do
  do j=js,je
     do i=is,ie
        do k=1,ke
           gz(i) = gz(i) + a(i,k,j) + b(i,j,k)
        end do
     end do
  end do
  !$omp enddo
  !$omp endparallel
end
subroutine sub2(ke,js,je,is,ie)
  integer::ke,js,je,is,ie
  integer::a(10,10,10),b(10,10,10),gz(10)
  integer::i,j,k
  a=0
  b=1
  gz=1
j=1
k=2
  !$omp parallel default(none) shared(a,b,gz,ke,js,je,is,ie) private(i,j,k)
  !$omp do
  do k=2,ke
     do j=js,je
        do i=is,ie
           a(i,k,j) = b(i,j,k-1)
        end do
     end do
  end do
  !$omp enddo
  !$omp do
  do j=js,je
     do i=is,ie
        do k=1,ke
           gz(i) = gz(i) + a(i,k,j) + b(i,j,k)
        end do
     end do
  end do
  !$omp enddo
  !$omp endparallel
end
call sub1(10,1,10,1,10)
call sub2(10,1,10,1,10)
print *, 'pass'
end
