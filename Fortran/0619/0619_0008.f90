subroutine  s1
real   ,parameter,dimension(2,3)::k=1
integer,parameter,dimension(0)::kk=1
integer,parameter,dimension(2,3):: a01= int(1.)
integer,parameter,dimension(2,3):: a03= int(k)
integer,parameter,dimension(0):: a04= real(kk)
real(4),parameter,dimension(3)::b1=[(1,2),(3,4),(5,6)]
real(4),parameter,dimension(3)::b2=[(1,2),(3,4),(5,6)]
real(4),parameter,dimension(3)::b3=[(1,2),(3,4),(5,6)]
integer,parameter::k1=size(a04)
integer,parameter::k2=size(real(a=kk))
integer,parameter,dimension(2,3):: a05= int(k)
integer,parameter,dimension(3):: a08= int([1.,2.,3.])
integer,parameter:: n01= kind(int([1.,2.,3.]))
integer,parameter:: n04= kind(int(b1))
integer,parameter:: n05= kind(int(b2))
integer,parameter:: n06= kind(int(b3))
integer,parameter:: n07= kind(int(b1))
if (any(abs(a01-1)>0.0001))print *,101
if (any(abs(a03-1)>0.0001))print *,103
if (any(abs(a05-1)>0.0001))print *,105
if (any(abs(a08-[1,2,3])>0.0001))print *,108
if (k1/=0)print *,114
if (k2/=0)print *,115
if (n01/=4) print *,200
if (kind(int(b1))/=4)print *,301
if (n04/=4) print *,203
if (n05/=4) print *,204
if (n06/=4) print *,205
if (n07/=4) print *,206
end
call s1
print *,'pass'
end
