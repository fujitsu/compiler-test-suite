      complex::c1,c2,c3,c4,c5,c6

      n=0
      c1=(1.0,1.0)
      c2=(2.0,2.0)
      c3=(3.0,3.0)
      c4=(4.0,4.0)
      c5=(5.0,5.0)
      c6=(6.0,6.0)

      call sub(c1,c2,c3,c4,c5,c6,n)
      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .and.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) .and.   &
           ( .not. n/=15 ) ) goto100
        write(6,*) "NG"
 100  continue
      if ( ( .not. n/=15 ) .and. &
           ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .and.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) )  ) goto200
        write(6,*) "NG"
 200  continue

     print *,'pass'
    end

    subroutine sub(c1,c2,c3,c4,c5,c6,n)
      complex::c1,c2,c3,c4,c5,c6

      if ( ( c1.eq.(1.0,0.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(0.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(0.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,0.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(0.0,1.0) .and. c2.eq.(2.0,0.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,0.0) .and. c2.eq.(0.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(0.0,0.0) .and. c2.eq.(0.0,0.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(0.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,0.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(0.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,0.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(0.0,3.0) .and. c4.eq.(4.0,0.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,0.0) .and. c4.eq.(0.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(0.0,0.0) .and. c4.eq.(0.0,0.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.eq.(1.0,1.0) .and. c2.eq.(2.0,2.0) ) .or.   &  
           ( c3.eq.(3.0,3.0) .and. c4.eq.(4.0,4.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

    end
