
      module f_def
      real(kind=4):: f1=1.0E0
      real(kind=4):: f2=1.0E0
      real(kind=4):: f3=1.1E0
      real(kind=4),parameter::FC1=1.0E0
      real(kind=4),parameter::FC2=1.0E0
      real(kind=4),parameter::FC3=1.1E0
      real(kind=4) FMAX
      real(kind=4) FMIN
      end module f_def

      module d_def
      real(kind=8):: d1=1.0D0
      real(kind=8):: d2=1.0D0
      real(kind=8):: d3=1.1D0
      real(kind=8),parameter::DC1=1.0D0
      real(kind=8),parameter::DC2=1.0D0
      real(kind=8),parameter::DC3=1.1D0
      real(kind=8) DMAX
      real(kind=8) DMIN
      end module d_def

      program main
      logical(kind=4) f_test, d_test
      logical(kind=4) fd_test

      if (.not. f_test()) then
         print *,"NG"
         stop
      endif

      if (.not. d_test()) then
         print *,"NG"
         stop
      endif

      if (.not. fd_test()) then
         print *,"NG"
         stop
      endif

      print *,"OK"

      stop
      end

      logical function f_test()
      use f_def
      logical(kind=4)::res=.false.

      call init_fvar

      if (f1 .eq. f2) then
         res = .true.
      else
         res = .false.
         goto 100
      endif

      if (f1 .eq. FC1) then
         res = .true.
      else
         res = .false.
         goto 100
      endif
      if (FC1 .eq. f1) then
         res = .true.
      else
         res = .false.
         goto 100
      endif

      if (FC1 .eq. FC2) then
         res = .true.
      else
         res = .false.
         goto 100
      endif

      if (f1 < FMAX) then
         res = .true.
      else
         res = .false.
         goto 100
      endif
      if (FMAX > f1) then
         res = .true.
      else
         res = .false.
         goto 100
      endif

      if (f1 > FMIN) then
         res = .true.
      else
         res = .false.
         goto 100
      endif
      if (FMIN < f1) then
         res = .true.
      else
         res = .false.
         goto 100
      endif

 100  f_test = res

      contains
      
      subroutine init_fvar
      FMAX =  huge(f1)
      FMIN = -huge(f1)
      end subroutine init_fvar

      end

      logical function d_test()
      use d_def
      logical(kind=4)::res=.false.

      call init_dvar

      if (d1 .eq. d2) then
         res = .true.
      else
         res = .false.
         goto 200
      endif

      if (d1 .eq. DC1) then
         res = .true.
      else
         res = .false.
         goto 200
      endif
      if (DC1 .eq. d1) then
         res = .true.
      else
         res = .false.
         goto 200
      endif

      if (DC1 .eq. DC2) then
         res = .true.
      else
         res = .false.
         goto 200
      endif

      if (d1 < DMAX) then
         res = .true.
      else
         res = .false.
         goto 200
      endif
      if (DMAX > d1) then
         res = .true.
      else
         res = .false.
         goto 200
      endif

      if (d1 > DMIN) then
         res = .true.
      else
         res = .false.
         goto 200
      endif
      if (DMIN < d1) then
         res = .true.
      else
         res = .false.
         goto 200
      endif

 200  d_test = res

      contains
      
      subroutine init_dvar
      DMAX =  huge(d1)
      DMIN = -huge(d1)
      end subroutine init_dvar

      end


      logical function fd_test()
      use f_def
      use d_def
      logical(kind=4)::res=.false.

      call init_fdvar

      if (f1 .eq. d1) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (d1 .eq. f1) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (f3 .ne. d3) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (d3 .ne. f3) then
         res = .true.
      else
         res = .false.
         goto 300
      endif

      if (f1 .eq. DC1) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (DC1 .eq. f1) then
         res = .true.
      else
         res = .false.
         goto 300
      endif

      if (f3 .ne. DC3) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (DC3 .ne. f3) then
         res = .true.
      else
         res = .false.
         goto 300
      endif

      if (FC1 .eq. DC2) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (DC2 .eq. FC1) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (FC3 .ne. DC3) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (DC3 .ne. FC3) then
         res = .true.
      else
         res = .false.
         goto 300
      endif

      if (f1 < DMAX) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (DMAX > d1) then
         res = .true.
      else
         res = .false.
         goto 300
      endif

      if (f1 > DMIN) then
         res = .true.
      else
         res = .false.
         goto 300
      endif
      if (DMIN < f1) then
         res = .true.
      else
         res = .false.
         goto 300
      endif

 300  fd_test = res

      contains
      
      subroutine init_fdvar
      FMAX =  huge(f1)
      FMIN = -huge(f1)
      DMAX =  huge(d1)
      DMIN = -huge(d1)
      end subroutine init_fdvar

      end
