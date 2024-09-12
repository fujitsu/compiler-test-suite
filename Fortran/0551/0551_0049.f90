PROGRAM MAIN
INTEGER,PARAMETER::b=INT(214748364.00_4)

call check(b,INT(214748364.00_4))

END

      subroutine check(x,y)
      integer x,y,yy,xx
      yy=y
      xx=x
      if (abs(xx-yy)>0.000001) then
        print *,'??? (Error: R->i4) ???'
      print *,xx,"--",yy
      else
        print*, "R->i4 OK"
      endif
      end subroutine
