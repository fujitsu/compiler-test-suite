PROGRAM MAIN
real*8,parameter::a = 12.0_8
integer*8,parameter::b = 23_8
real*8::frout = scale(a,b)
real*8::bckout
integer::k = kind(scale(a, b))
bckout = scale(a,b)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: R8->R8) ???'
else
print*," R8->R8 OK"
endif

call check1(k,kind(scale(a,b)))
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





