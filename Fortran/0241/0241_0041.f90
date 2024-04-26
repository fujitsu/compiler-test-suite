PROGRAM MAIN
integer*1,DIMENSION(1:5),PARAMETER::b=(/(int(5.0_8*i,1),i=1,5)/)

INTEGER*1,DIMENSION(1:5)::a
a=(/(int(5.0_8*i,1),i=1,5)/)

do i=1,5
call check(b(i),a(i))
enddo
END

      subroutine check(x,y)
      integer*1 x,y
      print *,x,"--",y
      if (x.ne.y) then
        print *,'??? (Error: R8->i1) ???'
       else
        print*, "R8->i1 OK"
      endif
      end subroutine
