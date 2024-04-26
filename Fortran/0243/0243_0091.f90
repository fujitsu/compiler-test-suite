PROGRAM MAIN
REAl*16::b=MODULO(67175171.23_16,2.0_16)
REAl*16::c
c = MODULO(67175171.23_16,2.0_16)

call check(b,c)

END

      subroutine check(x,y)
      REAl*16 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R16->R16) ???'
       else
        print*, "R16->R16 OK"
      endif
      end subroutine
