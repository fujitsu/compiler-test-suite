program main
CHARACTER (len=3), dimension (1:4), parameter :: aa=(/"ZZZ","CVA","DGT", "AZS"/)
CHARACTER (len=3), dimension (1:4), parameter :: bb=(/"YYY","CVB","DGK" ,"AZJ"/)
CHARACTER (len=3), dimension (1:4), parameter::cc= min(aa,bb)
CHARACTER (len=3), dimension (1:4)::dd
dd= min(aa,bb)

do i=1,4
call check(cc(i),dd(i))
enddo

END

subroutine check(x,y)
character(Len=3) x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine
