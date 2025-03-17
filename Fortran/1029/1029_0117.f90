      complex::c1,c2,c3,c4,c5,c6

      n=0
      c1=(1.0,1.0)
      c2=(2.0,2.0)
      c3=(3.0,3.0)
      c4=(4.0,4.0)
      c5=(5.0,5.0)
      c6=(6.0,6.0)

      if ( ( c1.ne.(1.0,0.0) .or. c2.ne.(2.0,2.0) ) .and.   &  
           ( c3.ne.(0.0,3.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.ne.(0.0,1.0) .or. c2.ne.(2.0,2.0) ) .and.   &  
           ( c3.ne.(3.0,0.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.ne.(1.0,1.0) .or. c2.ne.(0.0,2.0) ) .and.   &  
           ( c3.ne.(3.0,0.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.ne.(1.0,1.0) .or. c2.ne.(2.0,0.0) ) .and.   &  
           ( c3.ne.(0.0,3.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( ( c1.ne.(0.0,0.0) .or. c2.ne.(2.0,2.0) ) .and.   &  
           ( c3.ne.(0.0,3.0) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (n/=5) write(6,*) "NG"

     print *,'pass'
    end
