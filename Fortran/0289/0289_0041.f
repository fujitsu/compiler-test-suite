      character*4 ch(3)
      data ch/'????','*k??','??o*'/
      call sub1(ch)
      print *,'*** ',ch(1)
      i=1
      ch(i)='????'
      call sub1(ch(i))
      print *,'*** ',ch(1)
      ch(i)(i:i+1)='????'
      call sub1(ch(i)(i:i+3))
      print *,'*** ',ch(i)
      ch(1)='????'
      call sub2(ch)
      print *,'*** ',ch(1)
      i=1
      ch(i)='????'
      call sub2(ch(i))
      print *,'*** ',ch(1)
      ch(i)(i:i+1)='????'
      call sub2(ch(i)(i:i+3))
      print *,'*** ',ch(i)
      ch(1)='????'
      call sub3(ch)
      print *,'*** ',ch(1)
      i=1
      ch(i)='????'
      call sub3(ch(i))
      print *,'*** ',ch(1)
      ch(i)(i:i+1)='????'
      call sub3(ch(i)(i:i+3))
      print *,'*** ',ch(i)
      stop
      end
      subroutine sub1(chx)
      character*4 chx(3)
      i=1
      chx(i)=chx(i+1)(1:1)//chx(i+2)(3:3)//chx(i+1)(2:2)//chx(i+2)(4:4)
      return
      end
      subroutine sub2(chx)
      character*(*) chx(3)
      i=1
      chx(i)=chx(i+1)(1:1)//chx(i+2)(3:3)//chx(i+1)(2:2)//chx(i+2)(4:4)
      return
      end
      subroutine sub3(chx)
      character*(*) chx(3)
      character     chfun
      i=1
      chx(i)=        chx(i+1)(1:1)
     1       //chfun(chx(i+2)(3:3))//chx(i+1)(2:2)
     2       //chfun(chx(i+2)(4:4))
      return
      end
      character*(*) function chfun(chx)
      character*(*) chx
      character     chy
      chy=chx
      chfun=chy
      return
      end
