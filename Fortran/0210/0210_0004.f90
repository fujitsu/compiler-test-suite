call s1
call s2
print *,'pass'
end
subroutine s1
parameter(k=2)
real(k), dimension(2) :: b=(/1,2/)
real(k), dimension(2,3) :: a
a = spread(b,2,3) 
if(any(a/=reshape((/1,2,1,2,1,2/),(/2,3/)))) print *,'err'
end
subroutine s2
parameter(k=8)
real(k), dimension(2) :: b=(/1,2/)
real(k), dimension(2,3) :: a
a = spread(b,2,3) 
if(any(a/=reshape((/1,2,1,2,1,2/),(/2,3/)))) print *,'err'
end
