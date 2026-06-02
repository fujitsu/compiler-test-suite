program main
real*16,parameter::a(3) = (/14.9_16, 15.9_16, 34.9_16/)
real*16::f(3) = qerf(a)
real*16::b(3)
integer::k = kind(qerf(a))
integer::i
b = qerf(a)
print *,f, "--",b

do i=1,3
if (f(i).ne.b(i)) then
print *,'??? (Error) ???'
else
print*,"OK"
endif
enddo

call check1(k,kind(qerf(a)))
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
