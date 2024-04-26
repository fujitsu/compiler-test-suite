call s
print *,'pass'
end
subroutine s
integer, dimension (3,-4:0) :: i
integer :: k,j
j = size (i)
k = size (i, 2)
if(j.ne.15) print *,'err1'
if(k.ne.5) print *,'err2'
end
