      parameter(k=16)
      ic=0
      call foo(981401._k, 9256576781899397._k)
      call foo(57._k, 9448248885430461580813._k)
      call foo(5312569703882732198904665._k, 3507._k)
      call foo(607021111186313419657313._k, 7231._k)
      call foo(620216314197330993666548772._k, 15._k)
      call foo(9576283241350129._k, 13._k)
      call foo(2427639706978252017._k, 58699274._k)
      call foo(9082662444070153._k, 990975._k)
      call foo(83341710577935193072430906._k, 53._k)
      call foo(289456214966700960._k, 8416887482._k)
      call foo(37656258352033892._k, 130336708674._k)
      call foo(3803._k, 73400052160556567._k)
      call foo(214439._k, 9085937480656365._k)
      call foo(4866097679461065990929466._k, 31._k)
      call foo(74930828758794455._k, 974136579156._k)
      call foo(2052968578._k, 9524720540391729999._k)
      if (ic/=0)print *,'Issued count:',ic
      print *,'pass'
      contains
      subroutine foo(X,Y)
      real(k)::X,Y,Z,T,U
         Z = X*Y

         T = Z/Y

         U = Z/X

         IF (T.NE.X) THEN
             WRITE (*,*) ' '
             WRITE (*,*) ' T.NE.X    Case '
             WRITE (*,*) ' '
             WRITE (*,*) ' X = ',X
             WRITE (*,*) ' Y = ',Y
             WRITE (*,*) ' Z = X*Y = ',Z
             WRITE (*,*) ' T = Z/Y = ',T
             WRITE (*,*) ' U = Z/X = ',U
             WRITE (*,*) ' T-X = ',T-X
             ic=ic+1
         ENDIF

         IF (U.NE.Y) THEN
             WRITE (*,*) ' '
             WRITE (*,*) ' U.NE.Y    Case '
             WRITE (*,*) ' '
             WRITE (*,*) ' X = ',X
             WRITE (*,*) ' Y = ',Y
             WRITE (*,*) ' Z = X*Y = ',Z
             WRITE (*,*) ' T = Z/Y = ',T
             WRITE (*,*) ' U = Z/X = ',U
             WRITE (*,*) ' U-Y = ',U-Y
             ic=ic+1
         ENDIF
      end subroutine
      end
