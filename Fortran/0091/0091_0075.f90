PROGRAM MAIN
INTEGER,PARAMETER::b=NINT(8421376.00_4)

call check(b,NINT(8421376.00_4))

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
