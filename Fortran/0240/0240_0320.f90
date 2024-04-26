call s
print *,'pass'
end
subroutine s
integer, dimension(3,-4:0) :: i
integer :: k, j(2)
j = ubound (i)
k = ubound (i, 2)
if(any(j/=(/3,0/))) print *,'err'
if(k.ne.0) print *,'err'
end
