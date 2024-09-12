subroutine sub(ks,ke,js,je,is,ie)
  integer::ks,ke,js,je,is,ie
  integer::a(ke,je,ie),b(ke,je,ie)
  integer::k1,k2,k3
  a=0
  b=1
  k2=1
  !$omp parallel default(none) shared(a,b,ks,ke,js,je,is,ie)
  !$omp do
  do k1=ks,ke
     do k2=js,je
       do k3=is,ie
           a(k3,k2,k1) = b(k3,k2,k1) + k2
       end do
     end do
  end do
  !$omp enddo
  !$omp do
  do k2=1,10
  end do
  !$omp enddo
  !$omp endparallel
  if (k2.ne.1) print *,'ng1'
  if (any(a(:,10,:).ne.11)) print *,'ng2'
  print *,'pass'
end
program main
  call sub(1,10,1,10,1,10)
end

