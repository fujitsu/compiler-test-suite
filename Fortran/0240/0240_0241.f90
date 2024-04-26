call s
print *,'pass'
end
subroutine s
integer, dimension(3,3) :: c
integer, dimension(6) :: d
integer, dimension(9) :: e
c = reshape((/0,3,2,4,3,2,5,1,2/),(/3,3/))
d = pack(c,mask=c.ne.2)
e = pack(c,mask=.true.)
if(any(d/=(/0,3,4,3,5,1/))) print *,'err1'
if(any(e/=(/0,3,2,4,3,2,5,1,2/))) print *,'err2'
end
