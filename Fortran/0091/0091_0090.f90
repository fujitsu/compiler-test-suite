PROGRAM MAIN
real*4,parameter::a = 12.0_4
integer*4,parameter::b = 23_4
real*4::frout = scale(a,b)
real*4::bckout
integer::k = kind(scale(a, b))
bckout = scale(a,b)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: R4->R4) ???'
else
print*," R4->R4 OK"
endif

call check1(k,kind(scale(a,b)))
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




