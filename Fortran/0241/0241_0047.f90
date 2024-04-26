PROGRAM MAIN
INTEGER::b=INT(z'7FFFFFFF',4)

call check(b, INT(z'7FFFFFFF',4))
END

      subroutine check(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: boz->i4) ???'
      else
        print*, "boz->i4 OK"
      endif
      end subroutine
