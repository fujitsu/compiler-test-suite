PROGRAM MAIN
INTEGER::b=FLOOR(A=513.2_4,KIND=4)

call check(b,FLOOR(A=513.2_4,KIND=4))

END

      subroutine check(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R->i4) ???'
      else
        print*, "R->i4 OK"
      endif
      end subroutine
