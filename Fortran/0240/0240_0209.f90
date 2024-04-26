call s
print *,'pass'
end
subroutine s
integer a(2,3), b(3), c(2)
a = reshape((/1,2,3,4,5,6/), (/2,3/))
b = (/1,2,3/)
c = matmul(a, b)
if(any(c/=(/22,28/))) print *,'err'
end
