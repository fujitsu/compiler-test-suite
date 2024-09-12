intrinsic conjg
call s(conjg)
print *,'pass'
end
subroutine s(c)
complex c,x
x=(-0.,-0.)
if(abs(c(x)-conjg(x))>0.00001)print *,'error'
y=1.
yyy=-y
end

