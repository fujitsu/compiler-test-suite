print *,'pass'
end
subroutine sub()
integer::x=1,y=1,i=1
logical :: l1=.false.,l2=.false.
print *,func(x)+func(y)
print *,l1.and.l2
contains
function func(ii)
jj=ii
jj=jj
end function
end
subroutine sub2()
integer::x=1,y=1,i=1
print *,func(i).and.i==1 
contains
function func(ii)
logical :: func
jj=ii
jj=jj
end function
end
