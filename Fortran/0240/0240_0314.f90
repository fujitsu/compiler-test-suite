call s
print *,'pass'
end
subroutine s
integer, dimension(2,3):: a = reshape((/1,2,3,4,5,6/),(/2,3/))
integer, dimension(3,2) :: b
b = transpose(a)
if(any(b/=reshape((/1,3,5,2,4,6/),(/3,2/)))) print *,'err'
end
