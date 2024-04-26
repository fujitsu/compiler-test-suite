call s1
call s2
print *,'pass'
end
subroutine s1
parameter(k=2)
logical, dimension(2,2) :: d
real(k), parameter,dimension(9) :: cc = (/0,3,2,4,3,2,5,1,2/)
complex(k), dimension(9) :: c = cmplx(cc,cc)
complex(k), dimension(2,2) :: e
real(k),parameter,dimension(2,2)::r=reshape((/-1,0,3,-1/),(/2,2/))
complex(k),parameter,dimension(2,2)::rr=cmplx(r,r)
d = reshape( (/.false.,.true.,.true.,.false./), (/2, 2/) )
e = unpack(c,mask=d,field=(-1._k,-1._k))
if(any(e/=rr)) print *,'err'
end
subroutine s2
parameter(k=8)
logical, dimension(2,2) :: d
real(k), parameter,dimension(9) :: cc = (/0,3,2,4,3,2,5,1,2/)
complex(k), dimension(9) :: c = cmplx(cc,cc)
complex(k), dimension(2,2) :: e
real(k),parameter,dimension(2,2)::r=reshape((/-1,0,3,-1/),(/2,2/))
complex(k),parameter,dimension(2,2)::rr=cmplx(r,r)
d = reshape( (/.false.,.true.,.true.,.false./), (/2, 2/) )
e = unpack(c,mask=d,field=(-1._k,-1._k))
if(any(e/=rr)) print *,'err'
end
