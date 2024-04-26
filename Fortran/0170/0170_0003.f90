subroutine s1
integer:: a(2,3)=reshape([1,2,3,4,5,6],[2,3])
integer:: b(2*3*4)
call ss(a,b)
contains
subroutine ss(a,b)
integer:: a(:,:),b(:)
b= [a , a+1 , a+2, a+3]
call chk(b)
if (any(b /= f())) print *,201
if (any( [a , a+1 , a+2, a+3] /= f())) print *,202
if (any(foo ( [a , a+1 , a+2, a+3] )/= f())) print *,203
if (size( [a , a+1 , a+2, a+3] )/= size(b )) print *,204
if (any(lbound ( [a , a+1 , a+2, a+3] )/= 1)) print *,205
if (any(ubound ( [a , a+1 , a+2, a+3] )/= size(b))) print *,206
end subroutine
function foo( x )
integer:: x(:)
integer::foo(size(x))
foo=x
end function
function f()
integer::f(size(b))
f= [ [1,2,3,4,5,6], [1,2,3,4,5,6]+1 , [1,2,3,4,5,6]+2 , [1,2,3,4,5,6]+3 ]
end function
subroutine chk(x)
integer:: x(:)
if (any( [ [1,2,3,4,5,6], [1,2,3,4,5,6]+1 , [1,2,3,4,5,6]+2 , [1,2,3,4,5,6]+3] /= x)) print *,501
end subroutine
end
call s1
print *,'pass'
end
