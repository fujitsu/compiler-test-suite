program main
integer,DIMENSION(1:5),PARAMETER :: ramp=(/(int(3.2*i),i=1,5)/)

INTEGER,DIMENSION(1:5)::b
b=(/(int(3.2*i),i=1,5)/)

do i=1,5
call check(ramp(i),b(i))
enddo
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
