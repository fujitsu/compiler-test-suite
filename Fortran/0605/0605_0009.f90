program main

real*16,parameter::a = 14.9_16
real*16::f = qerfc(a)
real*16::b
integer::k = kind(qerfc(a))
b = qerfc(a)
print *,f, "--",b

if (f.ne.b) then
print *,'??? (Error) ???'
else
print*,"OK"
endif


call check1(k,kind(qerfc(a)))
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

