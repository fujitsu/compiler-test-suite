type ty
Real::rr (2)
end type

type(ty),parameter,dimension(*,*,*)::obj = reshape([ ty([1.1,2.1]) ,ty([3.1,4.1]) ,ty([5.1,6.1])&
,ty([7.1,8.1]) ,ty([9.1,10.1]) ,ty([11.1,12.1]) ,ty([13.1,14.1]) ,ty([15.1,16.1])] ,[2,2,2] ) 

complex*8,parameter::i(2:*,2:*,2:*) = reshape([obj(2,2,2)%rr(2),obj(2,2,2)%rr(2),& 
obj(2,2,2)%rr(2),obj(2,2,2)%rr(2),obj(2,2,2)%rr(2),obj(2,2,2)%rr(2),obj(2,2,2)%rr(2),obj(2,2,2)%rr(2)],[2,2,2])

complex*8::ii
dimension ::ii(1:*,*)
parameter(ii =reshape(obj(2,2,2)%rr,[2,1]))

if(size(obj) .EQ. size(i) .and. size(ii) .eq. 2)then
print*,'Pass'
else
print*,'Fail'
endif
end

