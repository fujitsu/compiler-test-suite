interface
subroutine csub(i,j)
value :: i
end subroutine
end interface
integer a,b
a=1
b=2
call csub(a,b)
print *,'pass'
end
subroutine csub(i,j)
value :: i
end
