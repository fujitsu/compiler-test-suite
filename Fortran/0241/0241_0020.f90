PROGRAM MAIN
REAL*8::b=DBLE(-2147483648_4)

call check(b,DBLE(-2147483648_4))

END

      subroutine check(x,y)
      real*8 x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: i4->R8) ???'
      else
        print*,"DBLE i4->R8 OK"
      endif
      end subroutine
