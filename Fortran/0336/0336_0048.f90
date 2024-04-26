integer a1(10)
common /com/a1
equivalence (a1(1),j)

call sss()

contains 
subroutine sss()
integer b1(10)
common /com/b1
equivalence (b1(1),jj)
b1=0
a1=(/1,2,3,4,5,6,7,8,9,10/)
b1(2:6)=a1(1:5)
print *,b1
print *,a1
end subroutine
end
