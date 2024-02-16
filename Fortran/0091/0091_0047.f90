program main
real*16,parameter::a = 12.0_16
real*16,parameter::b = 23.0_16
real*16::frout = merge(a,b, .true.)
real*16::bckout
integer::k = kind(merge(a, b, .true.))
bckout = merge(a,b,.true.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: R16->R16) ???'
else
print*," R16->R16 OK"
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







      
