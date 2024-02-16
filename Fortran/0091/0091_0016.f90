PROGRAM MAIN
real*4,parameter::par = 15.3_4
integer*4::bckout
integer*4:: frkind = kind(EXPONENT(par))
integer*4::frout = EXPONENT(par)
integer::bckkind
bckkind = kind(EXPONENT(par))
bckout = EXPONENT(par)

print *,frout, "--",bckout
if (frout.ne.bckout) then
print *,'??? (Error: R->I) ???'
else
print*," R->I OK"
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



