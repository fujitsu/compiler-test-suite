integer,allocatable :: arr(:)
integer::count=0

allocate(arr(3))
arr = 0

d1:do i = 1,3
b1:block
 d2:do j = 1,i+1
  count = count + 1
  i1:if (i == j) then
   b2:block
    arr = i
    i2: if (i==2) then
     exit i2
    elseif (i==1) then
     exit i1
    else
     exit i2
    endif i2
   end block b2
   print*, "911"
  else
   arr = 2
   goto 100
  endif i1
 end do d2
100 arr = 3
end block b1
end do d1
if(count /= 4) print*, 103, count
print*, "PASS"
end
