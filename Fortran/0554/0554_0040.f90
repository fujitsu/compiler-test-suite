PROGRAM MAIN
real*8,parameter::par = 15.3_8
integer*4:: frkind = kind(dnint(par))
REAL*8::frout = dnint(par)
integer*4::bckkind
real*8::bckout
bckkind = kind(dnint(par))
bckout = dnint(par)

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
