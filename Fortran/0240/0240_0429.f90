call s
print *,'pass'
end
subroutine s
integer, dimension (3,-4:0) :: i
integer :: k,j(2)
j = lbound(i)
k = lbound(i, 2)
if(any(j/=(/1,-4/))) print *,'err1'
if(k.ne.-4) print *,'err2'
end
