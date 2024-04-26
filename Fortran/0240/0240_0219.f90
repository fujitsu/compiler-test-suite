call s
print *,'pass'
end
subroutine s
integer j(2)
integer, dimension (2,2) :: m = reshape((/1,2,3,4/),(/2,2/))
i = minval(m)
j = minval(m,dim=1)
k = minval(m,mask=m<3)
if(i.ne.1) print *,'err1'
if(any(j/=(/1,3/))) print *,'err2'
if(k.ne.1) print *,'err3'
end
