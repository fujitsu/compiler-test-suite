program main
complex*32,parameter::a = (12.0_16, 15.8_16)
complex*32,parameter::b = (23.0_16, 34.76_16)
complex*32::frout = merge(a,b, .false.)
complex*32::bckout
integer::k = kind(merge(a, b, .false.))
bckout = merge(a,b,.false.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: C32->C32) ???'
else
print*," C32->C32 OK"
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
