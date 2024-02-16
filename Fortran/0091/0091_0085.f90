PROGRAM MAIN
REAL*8::e(3)
REAL*8,parameter::a(3)=(/35.1_8,0.4_8,56.4_8/)
integer*4,parameter:: b = 4_4
REAL*8::d(3)= scale (a, b)
Integer :: k = kind(scale (a, b))
e=scale (a, b)
do i=1,3

print *,d(i), "--",e(i)
if (d(i).ne.e(i)) then
print *,'??? (Error: R4->R4) ???'
else
print*," R4->R4 OK"
endif

enddo
call check1(k,kind(scale (a, b)))
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
