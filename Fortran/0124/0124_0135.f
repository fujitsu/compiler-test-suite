c

      program main
      real(kind=4)  f4
      double precision, parameter :: ANS=5.D0

      call init_var

c
      if (f4 .eq. 1.0D0) then
         f4 = f4 + 1.E0
      endif

c
      if (2.0D0 .eq. f4) then
         f4 = f4 + 1.E0
      endif

c
      if (f4 .eq. real(3.0,kind=8)) then
         f4 = f4 + 1.E0
      endif

c
      if (real(4.0,kind=8) .eq. f4) then
         f4 = f4 + 1.E0
      endif

      if (f4 .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif
         
      contains

      subroutine init_var

      f4  = 1.0E0*cos(0.0)

      end subroutine init_var

      end
