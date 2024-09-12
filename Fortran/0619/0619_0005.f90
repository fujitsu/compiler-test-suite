subroutine  s1
real   ,parameter,dimension(2,3)::k=1
integer,parameter,dimension(0)::kk=1
integer,parameter,dimension(2,3):: a01= ifix(1.)
integer,parameter,dimension(2,3):: a02= ifix(a=1.)
integer,parameter,dimension(2,3):: a03= ifix(a=k)
integer,parameter,dimension(0):: a04= real(a=kk)
real(4),parameter,dimension(3)::b1=[(1,2),(3,4),(5,6)]
real(4),parameter,dimension(3)::b2=[(1,2),(3,4),(5,6)]
real(4),parameter,dimension(3)::b3=[(1,2),(3,4),(5,6)]
integer,parameter::k1=size(a04)
integer,parameter::k2=size(real(a=kk))
integer,parameter,dimension(2,3):: a05= ifix(a=k)
integer,parameter,dimension(2,3):: a06= ifix(A=k)
integer,parameter,dimension(2,3):: a07= ifix(A=1.)
integer,parameter,dimension(3):: a08= ifix(a=[1.,2.,3.])
integer,parameter:: n01= kind(ifix(a=[1.,2.,3.]))
integer,parameter:: n02= kind(ifix(a=[1.,2.,3.]))
integer,parameter:: n03= kind(ifix(a=[1.,2.,3.]))
integer,parameter:: n04= kind(ifix(a=b1))
integer,parameter:: n05= kind(ifix(a=b2))
integer,parameter:: n06= kind(ifix(a=b3))
integer,parameter:: n07= kind(ifix(b1))
integer,parameter:: n08= kind(ifix(b2))
integer,parameter:: n09= kind(ifix(b3))
if (any(abs(a01-1)>0.0001))print *,101
if (any(abs(a02-1)>0.0001))print *,102
if (any(abs(a03-1)>0.0001))print *,103
if (any(abs(a05-1)>0.0001))print *,105
if (any(abs(a06-1)>0.0001))print *,106
if (any(abs(a07-1)>0.0001))print *,107
if (any(abs(a08-[1,2,3])>0.0001))print *,108
if (k1/=0)print *,114
if (k2/=0)print *,115
if (n01/=4) print *,200
if (n02/=4) print *,201
if (n03/=4) print *,202
if (kind(real(b1))/=4)print *,301
if (n04/=4) print *,203
if (n05/=4) print *,204
if (n06/=4) print *,205
if (n07/=4) print *,206
if (n08/=4) print *,207
if (n09/=4) print *,208
end
call s1
print *,'pass'
end
