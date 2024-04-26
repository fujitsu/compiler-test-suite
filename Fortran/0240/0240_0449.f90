call s
print *,'pass'
end
subroutine s
integer :: j(2)
integer ,dimension(2,2) :: m = reshape((/1,2,3,4/),(/2,2/))
i = sum(m)
j = sum(m,dim=1)
k = sum(m,mask=m>2)
if(i.ne.10) print *,'err1'
if(any(j/=(/3,7/))) print *,'err2'
if(k.ne.7) print *,'err3'
end
