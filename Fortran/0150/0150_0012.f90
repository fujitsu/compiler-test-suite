subroutine s2(a,i)
real a(i)
integer b(size([a+1,a+1]))
if (size(b)/=4) print *,201
end
call s2([1.0,1.0],2)
print *,'pass'
end
