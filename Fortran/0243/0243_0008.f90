PROGRAM MAIN
INTEGER*2::a = abs(32560_2)
call check(a, abs(32560_2))
END

subroutine check(x, y)
INTEGER*2 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i2->i2) ???'
else
print*," i2->i2 OK"
endif
end subroutine
