  PROGRAM MAIN
integer*8::b(2)= MAX((/1234_8, 22444_8/),(/34442_8, 43332_8/))
integer*8::c(2)
c=MAX((/1234_8, 22444_8/),(/34442_8, 43332_8/))

do i=1,2
call check(b(i), c(i))
enddo

END
 
subroutine check(x,y)
integer*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???' 
else     
print*," Max CALCULATION IS  OK"
endif    
end subroutine 
