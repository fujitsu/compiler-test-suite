subroutine s2(a,i)
real a(i)
integer b(size([a+1,a+1]))
entry s21(a,i)
entry s22(a,i)
entry s23(a,i)
entry s24(a,i)
if (size(b)/=4) print *,201
end
call s2([1.0,1.0],2)
call s21([1.0,1.0],2)
call s22([1.0,1.0],2)
call s23([1.0,1.0],2)
call s24([1.0,1.0],2)
print *,'pass'
end
