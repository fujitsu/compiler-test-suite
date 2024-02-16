PROGRAM MAIN
INTEGER*4::e(3)
REAL*4,parameter::a(3)=(/35.1_4,0.4_4,56.4_4/)

INTEGER*4::d(3)=EXPONENT(a)
integer :: k = kind(EXPONENT(a))

e=EXPONENT(a)

do i=1,3

print *,d(i), "--", e(i)
if (d(i).ne.e(i)) then
print *,'??? (Error: R->R) ???'
else
print*," R->I OK"
endif

enddo
call check1(k,kind(EXPONENT(a)))
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


