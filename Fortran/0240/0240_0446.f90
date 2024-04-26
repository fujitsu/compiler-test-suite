call s
print *,'pass'
end
subroutine s
integer, dimension (2,2) :: m = reshape((/1,2,3,4/),(/2,2/))
integer :: j(2)
i = product(m)
j = product(m,dim=1)
k = product(m,mask=m>2)
if(i.ne.24) print *,'err1'
if(any(j/=(/2,12/))) print *,'err2'
if(k.ne.12) print *,'err3'
end
