PROGRAM MAIN
REAL*8::e(3)
REAL*8,parameter::a(3)=(/35.1_8,0.4_8,56.4_8/)
REAL*8::d(3)=log_gamma(a)
integer ::k = kind (log_gamma(a))
e=log_gamma(a)
do i=1,3

if (d(i).ne.e(i)) then
   if (abs(d(i)-e(i))<0.000000000001_8) then
      e(i)=d(i)
   endif
endif
if (d(i).ne.e(i)) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif

enddo

call check1(k,kind (log_gamma(a)))
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
