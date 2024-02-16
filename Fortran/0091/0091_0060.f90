PROGRAM MAIN
INTEGER*8::b=MODULO(999_8,-11_8)

call check(b,MODULO(999_8,-11_8))

END

      subroutine check(x,y)
      INTEGER*8 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: i8->i8) ???'
       else
        print*, "i8->i8 OK"
      endif
      end subroutine
