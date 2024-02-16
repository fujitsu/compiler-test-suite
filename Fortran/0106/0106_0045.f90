  program main
    parameter (imax=10, jmin=1, jmax=10, kmax=10)  
   real(8) :: a(imax, jmin:jmax, kmax)  
   call sub0(a, imax, jmin, jmax, kmax)
   write(6,9) a(1,1,1)
9  format(f10.5)
  stop
  end
  subroutine sub0(a, imax, jmin, jmax, kmax)
    real(8) :: a(imax, jmin:jmax, kmax)
    a(:,:,:) = 0.d0
  end subroutine sub0
