PROGRAM MAIN
COMPLEX,DIMENSION(1:3),PARAMETER::a=(83886071.0_4,114748.34_4)

INTEGER::b(3)=INT(a(1:3),4)

do i=1,3
call check(b(i),INT(a(i),4))
enddo

END

      subroutine check(x,y)
      integer x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: c->i4) ???'
       else
        print*, "c->i4 OK"
      endif
      end subroutine
