PROGRAM MAIN
INTEGER*8::b=NINT(-775808.23_16,8)

call check(b,NINT(-775808.23_16,8))

END

      subroutine check(x,y)
      integer*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R16->i8) ???'
       else
        print*, "R16->i8 OK"
      endif
      end subroutine
