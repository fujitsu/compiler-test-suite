subroutine s1
integer,dimension(10,11,12)::a,b
a=reshape([(k,k=1,10*11*12)],[10,11,12])
b=reshape([(k,k=1,10*11*12)],[10,11,12])
call s11(a)
call s11(b)
call s12(a)
call s12(b)
contains
subroutine s11(a)
integer,dimension(:,:,:)::a
if (any(a/=reshape([(k,k=1,10*11*12)],[10,11,12]))) print *,101
if (any(shape(a)/=[10,11,12])) print *,201
end subroutine
subroutine s12(a)
integer,dimension(10,11,12)::a
if (any(a/=reshape([(k,k=1,10*11*12)],[10,11,12]))) print *,102
end subroutine
end
call s1
print *,'pass'
end
