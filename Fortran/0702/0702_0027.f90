call test01()
call test02()
print *,'pass'
end

subroutine test01()
integer a1(10)
integer ans(10)
data ans / 1,1,2,3,4,5,7,8,9,10/
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
do ii=1,10
 if (a1(ii).ne.ans(ii)) print *,'fail'
 if (b1(ii).ne.ans(ii)) print *,'fail'
end do
end subroutine
end
subroutine test02()
integer a1(10),j(10)
integer ans(10)
data ans / 1,1,2,3,4,5,7,8,9,10/
common /com1/a1
equivalence (a1(1),j(1))

call sss()

contains
subroutine sss()
integer b1(10),jj(10)
common /com1/b1
equivalence (b1(1),jj(1))
jj=0
j=(/1,2,3,4,5,6,7,8,9,10/)
jj(2:6)=j(1:5)
do ii=1,10
 if (a1(ii).ne.ans(ii)) print *,'fail'
 if (b1(ii).ne.ans(ii)) print *,'fail'
 if (jj(ii).ne.ans(ii)) print *,'fail'
 if (j (ii).ne.ans(ii)) print *,'fail'
end do
end subroutine
end
