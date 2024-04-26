integer,allocatable :: arr(:)
integer::count=0

allocate(arr(3))
arr = 0

d1:do i = 1,3
 d2:do j = 1,i+1
  count = count + 1
  i1:if (i == j) then
   arr = i
   i2: if (i==2) then
    exit i2
   else 
    exit i1
   endif i2
  else
   arr = 2
   goto 100
  endif i1
 end do d2
100 arr = 3
end do d1
if(count /= 4) print*, 103, count
print*, "PASS"
end
