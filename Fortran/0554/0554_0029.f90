PROGRAM MAIN
COMPLEX*16,parameter::b=(12.1_4, 11.2_4)
COMPLEX*16::a = DCONJG(b)
integer :: k = KINd(DCONJG(b))
call check(a, DCONJG(b))
call check1(k, kind(DCONJG(b)))
END

subroutine check(x, y)
COMPLEX*16 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
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
