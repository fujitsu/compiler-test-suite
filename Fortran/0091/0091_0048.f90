program main
real*4,parameter::a = 12.0_4
real*4,parameter::b = 23.0_4
logical,parameter::trueval = .true.
real*4::frout = merge(a,b, trueval)
real*4::bckout
integer::frkind = kind(merge(a, b, trueval))
integer::bckkind
bckkind = kind(merge(a,b,trueval))
bckout = merge(a,b,trueval)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: R4->R4) ???'
else
print*," R4->R4 OK"
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






      
