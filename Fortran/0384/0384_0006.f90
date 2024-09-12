call sub(10)
print *,'pass'
contains
subroutine sub(i)
integer :: arr(i,100,100,100)
integer :: brr(i,100,100,100)
arr=1
brr=0
arr(i,1,2,3)=arr(i,1,2,4)
brr(i,1,2,3)=brr(i,1,2,4)
end subroutine
end
