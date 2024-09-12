PROGRAM MAIN
INTEGER*4,parameter::b = -2_4
logical::a = IS_IOSTAT_EOR(b)
integer :: k = kind(IS_IOSTAT_EOR(b))
call check(a, IS_IOSTAT_EOR(b))
call check1(k, kind(IS_IOSTAT_EOR(b)))
END

subroutine check(x, y)
logical x, y
print *,x, "--",y
if (x.and.y) then
print*," I4->L2 OK"
else if(x.or.y) then
print *,'??? (Error: I4->L2) ???'
else
print*," I4->L2 OK"
endif
end subroutine

subroutine check1(x, y)
integer x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (KIND Error) ???'
else
print*," KIND OK"
endif
end subroutine
