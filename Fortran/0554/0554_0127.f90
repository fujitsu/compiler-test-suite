PROGRAM MAIN
real*8,parameter::par = 2.3_8
real*8::bckout
integer*4:: frkind = kind(log_gamma(par))
REAL*8::frout = log_gamma(par)
integer::bckkind
bckkind = kind(log_gamma(par))
bckout = log_gamma(par)

if (frout.ne.bckout) then
if (abs(frout-bckout)>0.000000001_8) print *,'??? (Error: R->R) ???'
else
endif
print*," R->R OK"
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
