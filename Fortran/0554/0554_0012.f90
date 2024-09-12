PROGRAM MAIN
real*8,parameter::par = 15.3_8
integer*4,parameter::akind = 4_4
integer*4:: frkind = kind(anint(par, akind))
REAL*8::frout = ANINT(par, akind)
integer*4::bckkind
real*8::bckout
bckkind = kind(anint(par, akind))
bckout = anint(par,akind)

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
