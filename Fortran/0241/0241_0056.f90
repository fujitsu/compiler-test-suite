PROGRAM MAIN
COMPLEX*32,PARAMETER::a(5)=(83886071.0_16,114748.34_16)

INTEGER::b(5)=INT(a(1:5),4)

do i=1,5
call check(b(i),INT(a(i),4))
enddo

END

      subroutine check(x,y)
      integer x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: c32->i4) ???'
       else
        print*, "c32->i4 OK"
      endif
      end subroutine
