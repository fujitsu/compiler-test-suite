module geometry
  implicit none
  private
  public oblique
  public gk
  logical:: oblique
  real(8):: gk(1:3,1:3)
end module

program main
  use geometry, only: oblique, gk
  implicit none
  complex(8):: g_k(0:255,0:255)
  oblique = .true.
  gk = 0.d0
  call p3m_gopt(g_k)
end program

subroutine  p3m_gopt(g_k)
  use geometry, only: oblique, gk
  implicit none
  complex(8),intent(out):: g_k(0:255,0:255)
  integer:: mi, mj, mk
  real(8):: km1, km2, km3, km_2, zexp

  do mk = -1, 1
    do mj = -1, 1
      do mi = -1, 1
        km1 = 2 * 3.141592653589793 * mi / 1.092559337615967
        km2 = 2 * 3.141592653589793 * mj / 1.235865712165833
        km3 = 2 * 3.141592653589793 * mk / 1.041882753372192
        if (oblique) then
           km_2 = (gk(1,1)*km1 + gk(2,1)*km2 + gk(3,1)*km3) * km1   &
                + (gk(1,2)*km1 + gk(2,2)*km2 + gk(3,2)*km3) * km2   &
                + (gk(1,3)*km1 + gk(2,3)*km2 + gk(3,3)*km3) * km3
        else
          km_2 = km1**2 + km2**2 + km3**2
        end if
        zexp = km_2
      end do
    end do
  end do
end subroutine
