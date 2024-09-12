module m1
contains
function f() result(a)
intrinsic :: ibits
integer a( ibits( 37, 2 ,2 ) )
a=1
end function
end
 use m1
write(1,*) f()
rewind 1
read(1,*) k
if (k/=1) print *,101
 print *,'pass'
end
