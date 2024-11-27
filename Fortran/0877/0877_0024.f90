      subroutine t
      implicit none
      real(8) a(10,10,10)
      integer k1,k2,k3

!$omp parallel do default(none) collapse(2) &
!$omp  & private(k1,k2,k3) shared(a)
  do k1=1,2
    do k2=k1,3
     do k3=1,3
       a(k1,k2,k3)=1
     end do
    end do
  end do
end
call t
print *,'pass'
end

