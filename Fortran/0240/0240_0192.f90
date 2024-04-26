integer, dimension (3,-4:0) :: i
integer :: k,j(2)
j = lbound (i)
k = lbound (i, 2)

if (j(1).ne.1) print *,'err'
if (j(2).ne.-4) print *,'err'
if (k.ne.-4) print *,'err'
print *,'pass'
end
