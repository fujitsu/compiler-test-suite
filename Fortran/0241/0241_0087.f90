PROGRAM MAIN

REAL*16::b=REAL(1.1897314953572317650857593266280070q+4932,16)

call check(b,REAL(1.1897314953572317650857593266280070q+4932,16))
END

      subroutine check(x,y)
      real*16 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R16->R16) ???'
      else
      print*,"R16->R16 OK"
      endif
      end subroutine
