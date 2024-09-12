PROGRAM MAIN
COMPLEX*16 ::e(3)
COMPLEX*16 ,PARAMETER::c1=(12.1_8, 11.2_8)
COMPLEX*16 ,PARAMETER::c2=(-12.1_8, 11.2_8)
COMPLEX*16 ,PARAMETER::c3=(12.1_8, -11.2_8)
COMPLEX*16 ,parameter::a(3)=(/c1,c2,c3/)
COMPLEX*16::d(3)=DCONJG(a)
integer :: k = kind(DCONJG(a))
e=DCONJG(a)
do i=1,3

print *,d(i), "--",e(i)
if (d(i).ne.e(i)) then
print *,'??? (Error: C->C) ???'
else
print*," C->C OK"
endif

enddo
call check1(k,kind(DCONJG(a)))
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
