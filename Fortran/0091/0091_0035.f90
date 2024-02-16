PROGRAM MAIN
real*8,parameter::par = 15.3_8
real*8::bckout
integer*4:: frkind = kind(fraction(par))
REAL*8::frout = fraction(par)
integer::bckkind
bckkind = kind(fraction(par))
bckout = fraction(par)

print *,frout, "--",bckout
if (frout.ne.bckout) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif
call check1(frkind,bckkind)
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
