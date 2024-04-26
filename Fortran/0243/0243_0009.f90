PROGRAM MAIN
INTEGER::a = abs(-1000000_4)
call check(a, abs(-1000000_4))
END

subroutine check(x, y)
INTEGER x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i4->i4) ???'
else
print*," i4->i4 OK"
endif
end subroutine
