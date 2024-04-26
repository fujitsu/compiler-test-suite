      subroutine t
      implicit none
      real(8) a(10,10,10)
      integer k1,k2,k3,k4

!$omp parallel do default(none) collapse(2) private(k1,k2,k3) shared(a)
  do k1=1,2
    do k2=1,3
     do k3=1,3
       a(k1,k2,k3)=1
     end do
    end do
  end do
!$omp parallel do default(none) collapse(3) private(k1,k2,k3) shared(a)
  do k1=1,2
    do k2=1,3
     do k3=1,3
       a(k1,k2,k3)=1
     end do
    end do
  end do
  do k1=1,2
!$omp parallel do default(none) collapse(2) private(k2,k3) shared(a,k1)
    do k2=1,3
     do k3=1,3
       a(k1,k2,3)=1
     end do
    end do
!$omp end parallel do
  end do
  do k1=1,2
!$omp parallel do default(none) collapse(2) private(k2,k3) shared(a,k1)
    do k2=k1,3
     do k3=1,3
       a(k1,k2,3)=1
     end do
    end do
!$omp end parallel do
  end do
  do k1=1,2
!$omp parallel do default(none) collapse(2) private(k2,k3,k4) shared(a,k1)
    do k2=1,3
     do k3=1,3
       do k4=k2,3
       a(k1,k2,k4)=1
     end do
    end do
    end do
!$omp end parallel do
  end do
  do k1=1,2
!$omp parallel do default(none) collapse(1) private(k2,k3) shared(a,k1)
    do k2=k1,3
     do k3=k2,3
       a(k1,k2,3)=1
     end do
    end do
!$omp end parallel do
  end do
!$omp parallel do default(none) collapse(1) private(k2,k3,k1) shared(a)
  do k1=1,2
    do k2=k1,3
     do k3=k2,3
       a(k1,k2,3)=1
     end do
    end do
  end do
!$omp end parallel do
  do k1=1,2
    do k2=k1,3
!$omp parallel do default(none) collapse(1) private(k3) shared(a,k2,k1)
     do k3=k2,3
       a(k1,k2,3)=1
     end do
!$omp end parallel do
    end do
  end do
end
call t
print *,'pass'
end

