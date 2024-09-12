subroutine s1(data,n1,n2,n3,n4)
real(8):: data(n1,n2)
real(8):: data2(n3,n4)
integer:: ds2(2)
real(8):: datablank(2)=[1.0_8,2.0_8]
integer:: dsA(2)=[2,1]

ds2=[n3,n4]

data2= reshape( data , ds2 , datablank , ORDER=dsA)
end
integer,parameter::n1=1,n2=2,n3=3,n4=4
real(8):: data(n1,n2)=reshape([11,12],[1,2])
call s1(data,1,2,n3,n4)
print *,'pass'
end
