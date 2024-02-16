PROGRAM MAIN
real*16,parameter::par = 15.3_16
real*16::bckout
integer*4:: frkind = kind(fraction(par))
REAL*16::frout = fraction(par)
integer::bckkind
bckkind = kind(fraction(par))
bckout = fraction(par)

print *,frout, "--",bckout
if (frout.ne.bckout) then
print *,'??? (Error: R16->R16) ???'
else
print*," R16->R16 OK"
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


