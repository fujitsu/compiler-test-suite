type ty1(i1,i2,kind)
 integer ,kind:: i1=2,i2=2
 integer ,kind :: kind=1
 integer(kind):: arr(i1)
end type 
type aa
 integer ::aa
end type 
type bb
 integer ::aa
end type 
type (aa) :: yy=aa(1)
type(ty1) :: sss=ty1(2,2,1)((/1,2/))
type(ty1) :: sss1(2)
data (sss1(i),i=1,2) /ty1(2,2,1)((/1,2/)),ty1(2,2,1)((/3,4/))/
print *,'pass'

end
