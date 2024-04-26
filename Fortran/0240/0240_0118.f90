print *,'pass'
end
subroutine sub()
integer::x=1,y=1,i=1
logical :: lop_1=.false.
print *,func(x) + func(y)
print *,lop_1 .and. lfunc(i)
contains
function func(ii)
jj=ii
jj=jj
end function
function lfunc(ii)
logical :: lfunc
jj=ii
jj=jj
end function
end

subroutine sub2()
integer::x=1,y=1,i=1
logical :: lop_1=.false.,l2=.false.
print *,func(i) .and. i==1
contains
function func(ii)
logical :: func
jj=ii
jj=jj
end function
end
