PROGRAM MAIN
complex*16,parameter::par = (32.1_8, 10.2_8)
integer*4:: frkind = kind(conjg(par))
complex*16::frout = conjg(par)
integer*4::bckkind
complex*16::bckout
bckkind = kind(conjg(par))
bckout = conjg(par)

print *,frout, "--",bckout
if (frout.ne.bckout) then
print *,'??? (Error: C->C) ???'
else
print*," C->C OK"
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
