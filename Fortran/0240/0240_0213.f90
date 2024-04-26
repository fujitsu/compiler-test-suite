call s
print *,'pass'
end
subroutine s
integer, dimension (2,2) :: m = reshape((/1,2,3,4/),(/2,2/))
integer j(2)
i = maxval(m)
j = maxval(m,dim=1)
k = maxval(m,mask=m<3)
if(i.ne.4) print *,'err1'
if(any(j/=(/2,4/))) print *,'err2'
if(k.ne.2) print *,'err3'
end
