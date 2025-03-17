      i=2
      j=2
      if (i.eq.2 .and. j.eq.2) GO TO 100
      write(6,*) "NG"
  100 continue
      i=1
      if (i.eq.2 .or. j.eq.2) GO TO 200
      write(6,*) "NG"
  200 continue
      print *,'pass'
      end
