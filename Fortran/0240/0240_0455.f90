interface
subroutine csub(i)
value :: i
end subroutine
end interface
integer a
a=1
call csub(a)
print *,'pass'
end
subroutine csub(i)
value :: i
end
