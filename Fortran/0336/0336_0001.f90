type test1
sequence
integer :: k
end type
type (test1) :: str1
integer :: j
common/com/i,str1,j
integer c(5)
str1%k=2
  do j=1,5
    c(j)=j
  end do
write (*,*) str1
write(6,*)  c
end

