
      module var_def
      real(kind=4):: f1=1.0E0
      real(kind=4):: f2=1.0E0
      real(kind=4):: f3=1.1E0
      real(kind=4):: f4=1.1E0
      real(kind=4),parameter::FC1=1.0E0
      real(kind=4),parameter::FC2=1.1E0
      real(kind=8),parameter::DC1=1.0D0
      real(kind=8),parameter::DC2=1.1D0
      end module var_def

      program main
      use var_def
      logical(kind=1),parameter::TT=.true.
      logical(kind=1),parameter::FF=.false.
      logical(kind=1)::res=FF
      
      if ((f1 .eq. DC1) .and. (f2 .eq. DC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f1 .eq. DC1) .or. (f2 .eq. DC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f3 .ne. DC2) .and. (f2 .eq. DC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif
      if ((f2 .eq. DC1) .and. (f3 .ne. DC2)) then
         res = TT
      else
         print *,"NG"
         stop
      endif
      if ((f1 .eq. DC1) .and. (f1 .eq. FC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif
      if ((f3 .eq. FC2) .and. (f1 .eq. DC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f3 .ne. DC2) .or. (f2 .eq. DC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif
      if ((f2 .eq. DC1) .or. (f3 .ne. DC2)) then
         res = TT
      else
         print *,"NG"
         stop
      endif
      if ((f1 .eq. DC1) .or. (f1 .eq. FC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif
      if ((f3 .eq. FC2) .or. (f2 .eq. DC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f1 .eq. DC1) .and. (f2 .eq. DC1)
     &     .and. (f3 .ne. DC2)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f1 .eq. DC1) .or. (f2 .eq. DC1)
     &     .or. (f3 .ne. DC2)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if (((f1 .eq. DC1) .and. (f2 .eq. DC1))
     &     .and. (f3 .ne. DC2)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f3 .ne. DC2) .and. (f2 .eq. DC1)
     &     .or. (f1 .eq. DC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f3 .ne. DC2) .and. (f4 .eq. DC2)
     &     .or. (f1 .eq. DC1)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f3 .ne. DC2) .and. (f2 .eq. DC1)
     &     .and. (f4 .ne. DC2)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      if ((f3 .ne. DC2) .or. (f2 .eq. DC1)
     &     .or. (f4 .ne. DC2)) then
         res = TT
      else
         print *,"NG"
         stop
      endif

      print *,"OK"

      end
