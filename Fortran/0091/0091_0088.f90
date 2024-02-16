PROGRAM MAIN
REAL*4::e(10)
REAL*4,parameter::a = 12.0_4
integer*4,parameter::b(10) = (/3_4, 48_4, 55_4, 91_4, 41_4, 3_4, 11_4, 8_4, 38_4, 8_4/)
REAL*4::d(10) = scale (a, b)
Integer :: k = kind(scale(a,b))
e=scale (a, b)
do i=1,10

print *,d(i), "--",e(i)
if (d(i).ne.e(i)) then
print *,'??? (Error: R4->R4) ???'
else
print*," R4->R4 OK"
endif

enddo

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
