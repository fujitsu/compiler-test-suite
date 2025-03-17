      complex::k
      j=1
      if ( (1.0,0.0).eq.j .and. j.eq.(1.0,0.0) ) goto 100
        write(6,*) "NG"
  100 continue

      k=(1.0,1.0)
      if ( (1.0,1.0).eq.k .and. k.eq.(1.0,1.0) ) goto 200
        write(6,*) "NG"
  200 continue

      k=(2.0,1.0)
      if ( (1.0,1.0).ne.k .and. k.ne.(1.0,1.0) ) goto 300
        write(6,*) "NG"
  300 continue

      print *,'pass'
      end
