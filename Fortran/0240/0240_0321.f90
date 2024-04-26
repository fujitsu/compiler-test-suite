call s
print *,'pass'
end
subroutine s
integer, dimension(9) :: c = (/0,3,2,4,3,2,5,1,2/)
logical, dimension(2,2) :: d
integer, dimension(2,2) :: e
d = reshape((/.false.,.true.,.true.,.false./),(/2, 2/))
e = unpack(c,mask=d,field=-1)
if(any(e/=reshape((/-1,0,3,-1/),(/2,2/)))) print *,'err'
end
