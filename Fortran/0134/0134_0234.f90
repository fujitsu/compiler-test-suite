subroutine x1
integer a1(3,3)
integer a2(3,3)
a1=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
a2=a1+10
call s(matmul(a1,a2))
end
subroutine x2
complex a1(3,3)
complex a2(3,3)
a1=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
a2=a1+10
call t(matmul(a1,a2))
end
call x1
call x2
print *,'pass'
end
subroutine s(x)
integer::x(3,3)
if (any((/150,186,222,186,231,276,222,276,330/)/=(/x/)))print *,101,x
end
subroutine t(x)
complex::x(3,3)
if (any(abs((/150,186,222,186,231,276,222,276,330/)-(/x/))>0.001))print *,101,x
end
