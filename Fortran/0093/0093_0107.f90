complex:: cmp
cmp = (3.78,4.98) 
call sub(cmp%im)

contains
subroutine sub(aa)
real:: aa
IF(aa .eq. 4.98) then
PRINT*,"PASS"
else
PRINT*,"FAIL"
endif
end subroutine sub
end



