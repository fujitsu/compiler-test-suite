PROGRAM MAIN
complex*8,parameter::par = (32.1_4, 10.2_4)
integer*4:: frkind = kind(conjg(par))
complex*8::frout = conjg(par)
integer*4::bckkind
complex*8::bckout
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
