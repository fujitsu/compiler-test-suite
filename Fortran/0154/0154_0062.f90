dimension a(2:*,2:*),b(2:*,2:*)
parameter (a= reshape([1,2,3,4],[1,4]))
integer, parameter::b= reshape([1,2,3,4],[4,1])
if (any(ubound(a)/=[2,5])) print *,101
if (any(ubound(b)/=[5,2])) print *,103
if (any(a/= reshape([1,2,3,4],[1,4]) )) print *,201
if (any(b/= reshape([1,2,3,4],[4,1]) )) print *,202
call s1
print *,'pass'
end
subroutine s1
dimension a(2:*,2:*),b(2:*,2:*)
parameter (a= reshape([1,2,3,4],[1,4]))
integer, parameter::b= reshape([1,2,3,4],[4,1])
if (any(ubound(a)/=[2,5])) print *,101
if (any(ubound(b)/=[5,2])) print *,103
if (any(a/= reshape([1,2,3,4],[1,4]) )) print *,201
if (any(b/= reshape([1,2,3,4],[4,1]) )) print *,202
end
