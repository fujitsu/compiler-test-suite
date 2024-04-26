PROGRAM MAIN
INTEGER*8::a = abs(-999999999_8)
call check(a, abs(-999999999_8))
END

subroutine check(x, y)
INTEGER*8 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i8->i8) ???'
else
print*," i8->i8 OK"
endif
end subroutine
