PROGRAM MAIN
REAL::e(10)
REAL,parameter::a(10)=35.1_4
REAL::d(10)= nearest(a, 4.0_4)
integer :: k = kind(nearest(35.1_4, 4.0_4))
e= nearest (a, 4.0_4)

do i=1,10
call check(d(i),e(i))
enddo
call check1(k,kind(nearest(35.1_4, 4.0_4)))
END

subroutine check(x,y)
REAL  x,y
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



