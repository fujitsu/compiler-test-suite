PROGRAM MAIN
real*4,parameter::par = 2.3_4
real*4::bckout
integer*4:: frkind = kind(log_gamma(par))
REAL*4::frout = log_gamma(par)
integer::bckkind
bckkind = kind(log_gamma(par))
bckout = log_gamma(par)

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
