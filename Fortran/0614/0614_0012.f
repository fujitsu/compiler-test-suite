      character c1*3,c2(10)*2,c3(10)*3,c4(20)*3,cfun*10
     +         ,a_cfun*10,t_cfun*10/'A'/
      integer error/0/
      c1='c1'
      c2='c2'
      c3='c3'
      c4='c4'
      a_cfun=cfun(c1,c2,c3,c4)
      if(a_cfun .ne. t_cfun) error=error+1
      if(error .eq. 0) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
        write(6,*) 'true   string=',t_cfun
        write(6,*) 'actual string=',a_cfun
      endif
      stop
      end

      CHARACTER*10 FUNCTION CFUN(C1,C2,C3,C4)
      INTEGER*2 I1
      CHARACTER (LEN=*) C1,C2(10),C3(10),C4(20)
      I1=LEN(C1//C2(1)//C3(1)//C4)
      CFUN=CHAR(ICHAR('A')+MIN(25,(I1-10)/2))
      RETURN
      END

