call test ()
print *,'pass'

  contains
subroutine test ()
  integer*4::x(5,3),y(5,3)
  integer*1,parameter::k1=1,kk1=2
  integer*2,parameter::k2=1,kk2=2
  x=reshape((/11,21,31,41,51, 12,22,32,42,52, 13,23,33,43,53/),(/5,3/))
  y=reshape((/11,21,31,41,51, 12,22,32,42,52, 13,23,33,43,53/),(/5,3/))
  n = 5
!$omp parallel workshare
  forall (i=1:n-1)
    x(i+1,k1) = x(i,kk1) + 3
    y(i+k1,k1)   = y(i+k1,k1)  + i
  end forall
!$omp end parallel workshare
  if(any((/x/)/=(/11,15,25,35,45, 12,22,32,42,52, 13,23,33,43,53/))) print *,"fail"
  if(any((/y/)/=(/11,22,33,44,55, 12,22,32,42,52, 13,23,33,43,53/))) print *,"fail"

  x=reshape((/11,21,31,41,51, 12,22,32,42,52, 13,23,33,43,53/),(/5,3/))
  y=reshape((/11,21,31,41,51, 12,22,32,42,52, 13,23,33,43,53/),(/5,3/))
!$omp parallel workshare
  forall (i=1:n-1)
    x(i+1,k1) = x(i,kk2) + 3
    y(i+k1,k1)   = y(i+k2,k2)  + i
  end forall
!$omp end parallel workshare
  if(any((/x/)/=(/11,15,25,35,45, 12,22,32,42,52, 13,23,33,43,53/))) print *,"fail"
  if(any((/y/)/=(/11,22,33,44,55, 12,22,32,42,52, 13,23,33,43,53/))) print *,"fail"
  end subroutine
end
