PROGRAM MAIN
INTEGER*1::b=INT(b'1111110',1)

call check(b, INT(b'1111110',1))
END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: boz->i1) ???'
       else
        print*, "boz->i1 OK"
      endif
      end subroutine
