PROGRAM MAIN
complex*16,parameter::par = (32.1_8, 10.2_8)
complex*16::bckout
integer*4:: frkind = kind(dconjg(par))
complex*16::frout = dconjg(par)
integer::bckkind
bckkind = kind(dconjg(par))
bckout = dconjg(par)
call check(frout, bckout)
call check1(frkind,bckkind)
END

subroutine check(x, y)
complex*16 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C->C) ???'
else
print*," C->C OK"
endif
end subroutine

subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
end subroutine
