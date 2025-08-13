module m1
 use iso_c_binding
contains
 subroutine st( d,dd )
 type ( * ),optional,target :: d
 type ( * ),optional,target :: dd( .. )
 if (        present      ( d ) )print *,present      ( d )
 if (      present      ( dd ) ) print *,present      ( dd )
end
 subroutine ss( d,dd )
 type ( * ),optional,target :: d
 type ( * ),optional,target :: dd( .. )
 type(c_ptr):: p
 call ss2( d,dd)
 if (.not.is_contiguous( dd ) ) print *,is_contiguous( dd )
 if (any(lbound       ( dd )/=1)) print *,lbound       ( dd )
 if (.not.   present      ( d ) )print *,present      ( d )
 if (.not. present      ( dd ) ) print *,present      ( dd )
 if (rank         ( d ) /= 0)  print *,rank         ( d )
 if (rank         ( dd ) /= 1)  print *,rank         ( dd )
 write(19,*) shape        ( d ),1
rewind 19
read(19,*) k
if (k/=1) print *,1001
 if (any(shape        ( dd )/=3)) print *,101
 if (size         ( dd )/=3) print *,201
 if (any(ubound       ( dd )/=3)) print *,901
 p=      c_loc        ( d )
 p=      c_loc        ( dd )
 end
 subroutine ss2( d,dd )
 type ( * ) :: d, dd(..)
 end subroutine
end

subroutine s1
 use m1
integer:: a,aa(3:5)
call ss( a , aa)
call st(       )
end
call s1
print *,'pass'
end
