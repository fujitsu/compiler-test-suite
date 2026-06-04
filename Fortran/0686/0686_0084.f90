call test ()
print *,'pass'
end
  subroutine test ()
  kkk=0
!$omp parallel workshare
  forall (i=1:10,j=1:10,k=1:10,m=1:10,i<5.and.j>7.and.k==10.and.m<=7)
     kkk = kkk + i + j + k + m
  end forall
!$omp end parallel workshare
  if ( kkk /= 31 ) print *,"fail"

  kkk=0
!$omp parallel workshare
  forall (i=1:10,j=1:11,k=1:10,m=1:10,i<5.and.j>7.and.k==10.and.m<=7)
     kkk = kkk + i + j + k + m
  end forall
!$omp end parallel workshare
  if ( kkk /= 32 ) print *,"fail"
  end
