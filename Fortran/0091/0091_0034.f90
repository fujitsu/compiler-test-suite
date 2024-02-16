PROGRAM MAIN
real*4,parameter::par = 15.3_4
real*4::bckout
integer*4:: frkind = kind(fraction(par))
REAL*4::frout = fraction(par)
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
