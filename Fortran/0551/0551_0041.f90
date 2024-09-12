PROGRAM MAIN
integer,PARAMETER::b=FLOOR(261.3_8*5,4)

INTEGER::a
a=FLOOR(261.3_8*5,4)

call check(b,a)
END

      subroutine check(x,y)
      integer x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->i4) ???'
       else
        print*, "R8->i4 OK"
      endif
      end subroutine
