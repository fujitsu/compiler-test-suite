integer::aa=2,count=0

d1:do i=1,4
 d2:do j=1,i+1
  b1:block
  integer::ii(aa)
   b2:block
    integer::jj(aa)
    ii = i
    jj = i+j
    count = count + 1
    if (i==j) then
     exit
    else 
    endif
   end block b2
  end block b1
 end do d2
end do d1
if(count /= 10) print*, "911", count
print*, "PASS"
end
