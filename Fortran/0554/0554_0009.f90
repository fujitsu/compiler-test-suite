PROGRAM MAIN
real*4,parameter::par = 15.3_4
integer*4,parameter::akind = 4_4
REAL*8::frres = ANINT(par, akind)
real*8::bckres
integer*4::bckkind
integer*4,parameter:: frkind = kind(anint(par, akind))
bckkind = kind(anint(par, akind))
bckres = anint(par, akind)
print *,frres, "--",bckres

if (frres.ne.bckres) then
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
