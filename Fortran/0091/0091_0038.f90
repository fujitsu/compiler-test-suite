program main
complex*8,parameter::a = (12.0_4, 15.8)
complex*8,parameter::b = (23.0_8, 34.76)
complex*8::frout = merge(a,b, .false.)
complex*8::bckout
integer::k = kind(merge(a, b, .false.))
bckout = merge(a,b,.false.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: C8->C8) ???'
else
print*," C8->C8 OK"
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







      
