      write(6,*) '                  **'
      write(6,*) ' ** positional editing test **'
      write(10,110) 10
 110  format(50x,i5)
      backspace 10
      read(10,110) i1
      if(i1.ne.10) goto 410
      write(6,*) ' ** item(1)ok ok ok **'
      goto 411
 410  write(6,*) ' ** item(1)ng ng ng **'
 411  continue
      write(10,111) 20
 111  format(250x,250x,250x,i5)
      backspace 10
      read(10,111) i1
      if(i1.ne.20) goto 420
      write(6,*) ' ** item(2)ok ok ok **'
      goto 421
 420  write(6,*) ' ** item(2)ng ng ng **'
 421  continue
      write(10,112) 30
 112  format(200x,200x,200x,tl500,i5)
      backspace 10
      read(10,113) i1
 113  format(t101,i5)
      if(i1.ne.30) goto 430
      write(6,*) ' ** item(3)ok ok ok **'
      goto 431
 430  write(6,*) ' ** item(3)ng ng ng **'
 431  continue
      write(10,114) 40
 114  format(t600,i5)
      backspace 10
      read(10,114) i1
      if(i1.ne.40) goto 440
      write(6,*) ' ** item(4)ok ok ok **'
      goto 441
 440  write(6,*) ' ** item(4)ng ng ng **'
 441  continue
      write(10,115) 50
 115  format(tr300,tl400,t600,i5)
      backspace 10
      read(10,115) i1
      if(i1.ne.50) goto 450
      write(6,*) ' ** item(5)ok ok ok **'
      goto 451
 450  write(6,*) ' ** item(5)ng ng ng **'
 451  continue
      write(10,116) 60
 116  format(tr600,tl500,i5)
      backspace 10
      read(10,117) i1
 117  format(tr100,i5)
      if(i1.ne.60) goto 460
      write(6,*) ' ** item(6)ok ok ok **'
      goto 461
 460  write(6,*) ' ** item(6)ng ng ng **'
 461  continue
      stop
      end
