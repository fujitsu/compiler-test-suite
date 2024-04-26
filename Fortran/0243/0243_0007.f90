PROGRAM MAIN
INTEGER*1::a = abs(-120_1)
call check(a, abs(-120_1))
END

subroutine check(x, y)
INTEGER*1 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i1->i1) ???'
else
print*," i1->i1 OK"
endif
end subroutine
