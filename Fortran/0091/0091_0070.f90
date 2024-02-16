program main
integer,PARAMETER :: ramp=NINT(8421.00_4,4)

INTEGER::b
b=NINT(8421.00_4,4)

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
