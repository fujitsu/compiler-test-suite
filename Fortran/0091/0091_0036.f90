program main
complex*16,parameter::a = (12.0_8, 15.8_8)
complex*16,parameter::b = (23.0_8, 34.76_8)
complex*16::frout = merge(a,b, .false.)
complex*16::bckout
integer::k = kind(merge(a, b, .false.))
bckout = merge(a,b,.false.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: C16->C16) ???'
else
print*," C16->C16 OK"
endif

call check1(k,kind(merge(a,b,.false.)))
END


      subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine







      
