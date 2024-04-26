call s1
call s2
print *,'pass'
end
subroutine s1
integer,parameter::k=2
real(k), dimension(3,3) :: c
real(k), dimension(6) :: d
real(k), dimension(9) :: e
c = reshape((/0,3,2,4,3,2,5,1,2/),(/3,3/))
d = pack(c,mask=c.ne.2) 
e = pack(c,mask=.true.) 
if(any(d/=(/0,3,4,3,5,1/))) print *,'err1'
if(any(e/=(/0,3,2,4,3,2,5,1,2/))) print *,'err2'
end
subroutine s2
integer,parameter::k=8
real(k), dimension(3,3) :: c
real(k), dimension(6) :: d
real(k), dimension(9) :: e
c = reshape((/0,3,2,4,3,2,5,1,2/),(/3,3/))
d = pack(c,mask=c.ne.2) 
e = pack(c,mask=.true.) 
if(any(d/=(/0,3,4,3,5,1/))) print *,'err1'
if(any(e/=(/0,3,2,4,3,2,5,1,2/))) print *,'err2'
end
