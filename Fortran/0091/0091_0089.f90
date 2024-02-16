PROGRAM MAIN
real*16,parameter::a = 12.0_16
integer*8,parameter::b = 23_8
real*16::frout = scale(a,b)
real*16::bckout
integer::k = kind(scale(a, b))
bckout = scale(a,b)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: R16->R16) ???'
else
print*," R16->R16 OK"
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