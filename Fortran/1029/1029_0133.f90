      complex::c1,c2,c3,c4,c5,c6

      n=0
      c1=(1.0,1.0)
      c2=(2.0,2.0)
      c3=(3.0,3.0)
      c4=(4.0,4.0)
      c5=(5.0,5.0)
      c6=(6.0,6.0)

      call sub(c1,c2,c3,c4,c5,c6,n)

      if (n/=21) write(6,*) "NG"
     print *,'pass'
    end

    subroutine sub(c1,c2,c3,c4,c5,c6,n)
      complex::c1,c2,c3,c4,c5,c6

      if ( ( c1.eq.(0.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(3.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,0.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(3.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(0.0,0.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(3.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(0.0,2.0) ) .or.  &
           ( c3.eq.(3.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,0.0) ) .or.  &
           ( c3.eq.(3.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(0.0,0.0) ) .or.  &
           ( c3.eq.(3.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(0.0,0.0) .and. c2.eq.(0.0,0.0) ) .or.  &
           ( c3.eq.(3.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(0.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(0.0,3.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,0.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(0.0,3.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(0.0,0.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(0.0,3.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(0.0,2.0) ) .or.  &
           ( c3.eq.(0.0,3.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,0.0) ) .or.  &
           ( c3.eq.(0.0,3.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(0.0,0.0) ) .or.  &
           ( c3.eq.(0.0,3.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(0.0,0.0) .and. c2.eq.(0.0,0.0) ) .or.  &
           ( c3.eq.(0.0,3.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(0.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(0.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,0.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(0.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(0.0,0.0) .and. c2.eq.(2.0,2.0) ) .or.  &
           ( c3.eq.(0.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(0.0,2.0) ) .or.  &
           ( c3.eq.(0.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,0.0) ) .or.  &
           ( c3.eq.(0.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(0.0,0.0) ) .or.  &
           ( c3.eq.(0.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ( ( c1.eq.(0.0,0.0) .and. c2.eq.(0.0,0.0) ) .or.  &
           ( c3.eq.(0.0,0.0) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

    end
