program main
integer,PARAMETER :: ramp=CEILING(3.2,4)

INTEGER::b
b=CEILING(3.2, 4)

call check(ramp,b)
end
      subroutine check(x,y)
      integer x,y
      print *,x,"--",Y
      if (x.ne.y) then
        print *,'??? (Error: R->i4) ???'
       else
        print*, "R->i4 OK"
      endif
      end subroutine
