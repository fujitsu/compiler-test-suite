call test ()
print *,'pass'
end

  subroutine test()
  integer,dimension(3,3)::a=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
  integer,dimension(3,3)::b=0,c=0
!$omp parallel workshare
  forall (j=1:3,i=1:3,i==j)
    b(i,j) = a(i,j) 
  end forall
!$omp end parallel workshare
  if(any((/b/)/=(/1,0,0,0,5,0,0,0,9/))) print *,"fail"
!$omp parallel workshare
  forall (j=1:3,i=1:3,i<=j)
    c(i,j) = a(i,j)
  end forall
!$omp end parallel workshare
  if(any((/c/)/=(/1,0,0,4,5,0,7,8,9/))) print *,"fail"
  end
