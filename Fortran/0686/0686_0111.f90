call test ()
print *,'pass'

  contains
subroutine test ()
  integer*4::x(5,3),y(5,3)
  integer*1,parameter::k1=1,kk1=2
  integer*2,parameter::k2=1,kk2=2
  integer*4,parameter::k4=1,kk4=2
  integer*8,parameter::k8=1,kk8=2
  x=reshape((/11,21,31,41,51, 12,22,32,42,52, 13,23,33,43,53/),(/5,3/))
  y=reshape((/11,21,31,41,51, 12,22,32,42,52, 13,23,33,43,53/),(/5,3/))
  n = 5
!$omp parallel workshare
  FORALL (jj=1:5)
  forall (j=1:3-1)
    forall (i=1:n-1)
      x(i+k1+k2+k8-kk4,j+k8) = x(i+k1+k2+k8-kk8-1,j) + k1+k2+k8
      y(i+k1+k2+k8+k4-kk8-kk1,j+k4+k8-kk1) = &
      y(i+k1+k2+k8+k4-kk8-kk1,j+k4+k8-kk1) + i
    end forall
  end forall
  END FORALL
!$omp end parallel workshare
  if(any((/x/)/=(/11,21,31,41,51, 12,14,24,34,44, 13,15,25,35,45/))) print *,"fail"
  if(any((/y/)/=(/12,23,34,45,51, 13,24,35,46,52, 13,23,33,43,53/))) print *,"fail"

  y=reshape((/11,21,31,41,51, 12,22,32,42,52, 13,23,33,43,53/),(/5,3/))
!$omp parallel workshare
  FORALL (jj=1:5)
  forall (j=1:3-1)
    forall (i=1:n-1)
      y(i+k1+k2+k8+k4-kk8-kk1,j+k4+k8-kk2) = &
      y(i+k1+k2-kk8+k4+k8-kk1,j+k4+k8-kk2) + i
    end forall
  end forall
  END FORALL
!$omp end parallel workshare
  if(any((/y/)/=(/12,23,34,45,51, 13,24,35,46,52, 13,23,33,43,53/))) print *,"fail"
  end subroutine
end
