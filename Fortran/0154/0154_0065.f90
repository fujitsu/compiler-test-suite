subroutine s(x)
intent(in out) :: x
x=x+1
end
x=1
call s(x)
print *,'pass'
end
