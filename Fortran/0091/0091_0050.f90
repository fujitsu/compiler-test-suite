program main
real*8,parameter::a = 12.0_8
real*8,parameter::b = 23.0_8
real*8::frout = merge(a,b, .true.)
real*8::bckout
integer::k = kind(merge(a, b, .true.))
bckout = merge(a,b,.true.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: R8->R8) ???'
else
print*," R8->R8 OK"
endif

call check1(k,kind(merge(a,b,.true.)))
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






      
