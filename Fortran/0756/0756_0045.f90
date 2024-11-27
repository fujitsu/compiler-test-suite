type ty1(i1)
 integer ,kind::i1=2
 integer:: arr(i1)=1
end type 
type(ty1),parameter :: ss1=ty1(3)
type(ty1) :: ss2=ty1(3)
type(ty1) :: ss3/ty1(3)/
print *,'pass'
end
