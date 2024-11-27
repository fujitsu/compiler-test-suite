subroutine s1
integer x(2)
real    y(2)
print '(z8.8)',x
print '(z8.8)',y
print *,x*1.0,y*1.0
end
call s1
print *,'pass'
end
