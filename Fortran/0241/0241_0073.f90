PROGRAM MAIN
INTEGER,PARAMETER::b=INT(67175171.23_16)

call check(b,INT(67175171.23_16))

END

      subroutine check(x,y)
      integer x,y
      if (x.ne.y) then
      print *,x,"--",y
        print *,'??? (Error: R16->i4 ???)'
       else
        print*, "R16->i4 OK"
      endif
      end subroutine
