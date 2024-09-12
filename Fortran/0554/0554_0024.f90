PROGRAM MAIN
COMPLEX*8::e(3)
COMPLEX*8,PARAMETER::c1=(12.1_4, 11.2_4)
COMPLEX*8,PARAMETER::c2=(-12.1_4, 11.2_4)
COMPLEX*8,PARAMETER::c3=(12.1_4, -11.2_4)
COMPLEX*8,parameter::a(3)=(/c1,c2,c3/)
COMPLEX*8::d(3)=CONJG(a)
integer :: k = kind(CONJG(a))
e=CONJG(a)

do i=1,3

print *,d(i), "--",e(i)
if (d(i).ne.e(i)) then
print *,'??? (Error: C->C) ???'
else
print*," C->C OK"
endif

enddo
call check1(k,kind(CONJG(a)))
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
