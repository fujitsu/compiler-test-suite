PROGRAM MAIN
INTEGER*2::b=INT(o'77777',2)

call check(b, INT(o'77777',2))
END

      subroutine check(x,y)
      integer*2 x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: boz->i2) ???'
       else
        print*, "boz->i2 OK"
      endif
      end subroutine
