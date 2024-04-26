call s
print *,'pass'
end
subroutine s
integer, dimension(2) :: b=(/1,2/)
integer, dimension(2,3) :: a
a = spread(b,2,3)
if(any(a/=reshape((/1,2,1,2,1,2/),(/2,3/)))) print *,'err'
end
