integer :: arr(3)=[2,4,6]

block
integer :: brr(3)=[2,4,6]
if(any(arr/=brr)) then
 print*,101
else
 print*,'pass'
end if
end block
end
