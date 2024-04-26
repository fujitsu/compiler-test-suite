
      program main
      real(kind=4)  f4
      real(kind=8)  f8
      real(kind=16) f16

      call init_var

      if (f4 .eq. 1.0D0) then
         f4 = f4 + 1.E0
      endif

      if (f8 .eq. 1.0D0) then
         f8 = f8 + 1.D0
      endif

      if (f16 .eq. 1.0D0) then
         f16 = f16 + 1.D0
      endif

      if ((f4 .eq. 2.E0)
     &     .and. (f8 .eq. 2.D0)
     &     .and. (f16 .eq. 2.D0)) then
         print *,"OK"
      else
         print *,"NG"
      endif
         
      contains

      subroutine init_var

      f4  = 1.0

      f8  = 1.0

      f16 = 1.0

      end subroutine init_var

      end
