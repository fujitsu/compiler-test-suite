character*5 c3,x4
i=3
if (c1(5)/='12345')write(6,*) "NG"
if (c2(5)/='12345')write(6,*) "NG"
if (c3(5)/='12345')write(6,*) "NG"
if (merge('abc','efg',.true.)/='abc')write(6,*) "NG"
if (merge('abc'(:i),'efg'(:i),.true.)/='abc')write(6,*) "NG"
x4='abc'
if (trim(x4)/='abc')write(6,*) "NG"
print *,'pass'
contains
function c1(i) result(c)
character(len=i)::c
c='123456789'
end function
function c2(i) result(c)
character(len=5)::c
c='123456789'
end function
end
function c3(i) result(c)
character(len=*)::c
c='123456789'
if (len(c)/=5)write(6,*) "NG"
end function

