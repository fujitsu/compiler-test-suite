call s1
call s2
print *,'pass'
end
subroutine s1
parameter(k=2)
real(k), dimension(9) :: c = (/0,3,2,4,3,2,5,1,2/)
logical, dimension(2,2) :: d
real(k), dimension(2,2) :: e
d = reshape( (/.false.,.true.,.true.,.false./), (/2, 2/) )
e = unpack(c,mask=d,field=-1._k)
if(any(e/=reshape((/-1,0,3,-1/),(/2,2/)))) print *,'err'
end
subroutine s2
parameter(k=8)
real(k), dimension(9) :: c = (/0,3,2,4,3,2,5,1,2/)
logical, dimension(2,2) :: d
real(k), dimension(2,2) :: e
d = reshape( (/.false.,.true.,.true.,.false./), (/2, 2/) )
e = unpack(c,mask=d,field=-1._k)
if(any(e/=reshape((/-1,0,3,-1/),(/2,2/)))) print *,'err'
end
