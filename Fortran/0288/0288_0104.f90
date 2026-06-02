integer, dimension(3,-4:0) :: i
integer :: k
k = sizeof (i)
if(k /= 60) print *,'fail'
print *,'pass'
end
