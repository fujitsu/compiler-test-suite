call test ()
print *,'pass'
end

  subroutine test ()
  integer,dimension(20,20)::a=0,b=0,c=0
!$omp parallel workshare
  forall (j=1:20,i=1:20)
    a(i,j) = j*i+1
  end forall
!$omp end parallel workshare
!$omp parallel workshare
  forall (j=1:20,i=1:20,i<j)
    b(i,j) = a(i,j)
  end forall
!$omp end parallel workshare
!$omp parallel workshare
  forall (j=1:20,i=1:20,i==j)
    b(i,j) = a(i,j)
  end forall
!$omp end parallel workshare
!$omp parallel workshare
  forall (j=1:20,i=1:20,i<=j)
    c(i,j) = a(i,j)
  end forall
!$omp end parallel workshare
  if ( any ( (/b/) /= (/c/) ) ) print *,"fail"
  end
