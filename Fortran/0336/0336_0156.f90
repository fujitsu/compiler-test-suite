module geometry

  implicit none
  private
  public len
  public oblique
  public gk

  logical:: oblique
  real(8):: len(3)
  real(8):: gr(1:3,1:3), gk(1:3,1:3)

end module

program main

  use geometry, only: oblique, len, gk

  implicit none

  real(8)::    alpha, ddiff(0), c
  complex(8):: g_k(0:255,0:255,0:0)

  oblique = .true.
  len(1) = 279.6951880000000
  len(2) = 316.3816270000000
  len(3) = 266.7220000000000
  gk = 0.d0
  gk(1,1) = 1.d0
  gk(2,2) = 1.d0
  gk(3,3) = 1.d0

  alpha = 3.487E-01
  c = 3.341E+02


  call p3m_gopt(256,256,256,0,1,g_k,7,0,alpha,ddiff,c)

end program

subroutine  p3m_gopt(n1, n2, n3, s1_l, n1_l, g_k, p, j0, alpha, ddiff, c)

  use geometry, only: oblique, len, gk

  implicit none

  integer,intent(in):: n1, n2, n3, s1_l, n1_l, j0, p
  real(8),intent(in):: alpha, ddiff(j0), c
  complex(8),intent(out):: g_k(0:n3-1,0:n2-1,s1_l:s1_l+n1_l-1)

  integer:: i, j, k,  ki, kj, kk
  integer:: jj
  integer:: mi, mj, mk
  integer:: mi_min, mi_max, mj_min, mj_max, mk_min, mk_max
  real(8):: h1, h2, h3
  real(8):: d1, d2, d3, d_2, k1, k2, k3
  real(8):: t1, t2, t3, tm1, tm2, tm3
  real(8):: sum_u2, c1_2, c2_2, c3_2, u_2, u1, u2, u3, s1, s2, s3
  real(8):: sum_u2r_1, sum_u2r_2, sum_u2r_3
  real(8)::  a, zexp, pi
  real(8):: km1, km2, km3, km_2
  real(8), parameter:: eps = 1.0d-10

  pi = 4.0 * atan(1.0D0)
  h1 = len(1) / n1
  h2 = len(2) / n2
  h3 = len(3) / n3
  a = 1.0 / (4.0 * alpha**2)

  if (oblique) then
    mi_max = int(h1*alpha/pi * sqrt(-log(eps)/gk(1,1))) + 1
    mj_max = int(h2*alpha/pi * sqrt(-log(eps)/gk(2,2))) + 1
    mk_max = int(h3*alpha/pi * sqrt(-log(eps)/gk(3,3))) + 1
  else
    mi_max = int(h1*alpha/pi * sqrt(-log(eps))) + 1
    mj_max = int(h2*alpha/pi * sqrt(-log(eps))) + 1
    mk_max = int(h3*alpha/pi * sqrt(-log(eps))) + 1
  end if
  mi_min = - mi_max
  mj_min = - mj_max
  mk_min = - mk_max

  do mk = mk_min, mk_max
    do mj = mj_min, mj_max
      do mi = mi_min, mi_max
        km1 = k1 + 2 * pi * mi / h1
        km2 = k2 + 2 * pi * mj / h2
        km3 = k3 + 2 * pi * mk / h3
        if (oblique) then
        km_2 = (gk(1,1)*km1 + gk(2,1)*km2 + gk(3,1)*km3) * km1   &
             + (gk(1,2)*km1 + gk(2,2)*km2 + gk(3,2)*km3) * km2   &
             + (gk(1,3)*km1 + gk(2,3)*km2 + gk(3,3)*km3) * km3
        else
          km_2 = km1**2 + km2**2 + km3**2
        end if
        zexp = exp(- a * km_2) / km_2
      end do
    end do
  end do

end subroutine


