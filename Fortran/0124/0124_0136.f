
      program main
      real(kind=4)  f4, res
      double precision, parameter :: N=1.1D0
      double precision, parameter :: S1=1.1
      double precision, parameter :: S2=2.1
      real(kind=4), parameter :: ANS=4.0E0

      call init_var

      if (f4 .eq. N)then
         f4 = f4 + 1.0E0
      endif

      if (N .eq. f4)then
         f4 = f4 + 1.0E0
      endif

      if (f4 .eq. 1.1D0)then
         f4 = f4 + 1.0E0
      endif

      if (1.1D0 .eq. f4)then
         f4 = f4 + 1.0E0
      endif

      res = f4

      call init_var
      if (f4 .eq. S1)then
         f4 = f4 + 1.0E0
      endif

      if (S2 .eq. f4)then
         f4 = f4 + 1.0E0
      endif

      res = real(aint(res + f4))

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif
         
      contains

      subroutine init_var

      f4 = 1.1E0

      end subroutine init_var

      end
