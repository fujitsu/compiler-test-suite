call s1
call s2
print *,'pass'
end
subroutine s1
integer,parameter::k=2
real(k), dimension(3,3),parameter :: cc = reshape((/0,3,2,4,3,2,5,1,2/),(/3,3/))
complex(k), dimension(3,3) :: c = cmplx(cc,cc)
complex(k), dimension(6) :: d
complex(k), dimension(9) :: e
real(k), dimension(6),parameter :: dd=(/0,3,4,3,5,1/)
real(k), dimension(9),parameter :: ee=(/0,3,2,4,3,2,5,1,2/)
complex(k), dimension(6) :: dx=cmplx(dd,dd)
complex(k), dimension(9) :: ex=cmplx(ee,ee)
complex(k), parameter:: cx = (2,2)
d = pack(c,mask=c.ne.cx) 
e = pack(c,mask=.true.) 
if(any(d/=dx)) print *,'err1'
if(any(e/=ex)) print *,'err2'
end
subroutine s2
integer,parameter::k=8
real(k), dimension(3,3),parameter :: cc = reshape((/0,3,2,4,3,2,5,1,2/),(/3,3/))
complex(k), dimension(3,3) :: c = cmplx(cc,cc)
complex(k), dimension(6) :: d
complex(k), dimension(9) :: e
real(k), dimension(6),parameter :: dd=(/0,3,4,3,5,1/)
real(k), dimension(9),parameter :: ee=(/0,3,2,4,3,2,5,1,2/)
complex(k), dimension(6) :: dx=cmplx(dd,dd)
complex(k), dimension(9) :: ex=cmplx(ee,ee)
complex(k), parameter:: cx = (2,2)
d = pack(c,mask=c.ne.cx) 
e = pack(c,mask=.true.) 
if(any(d/=dx)) print *,'err1',d,dx
if(any(e/=ex)) print *,'err2'
end
