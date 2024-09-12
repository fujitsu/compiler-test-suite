subroutine s1(n1,n2,n3)
integer,pointer::p(:)
integer,pointer,contiguous::p2(:,:,:,:)
allocate(p2(1:2,1:2,1:1,1:3))
p2=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[2,2,1,3])
p(2:13)=>p2
if (any(lbound(p)/=[2])) print *,201
if (any(ubound(p)/=[13])) print *,202
if (p(2)/=1) print *,101
if (p(3)/=2) print *,102
if (p(4)/=3) print *,103
if (p(5)/=4) print *,104
if (p(6)/=5) print *,111
if (p(7)/=6) print *,112
if (p(8)/=7) print *,113
if (p(9)/=8) print *,114
if (p(10)/=9) print *,115
if (p(11)/=10) print *,116
if (p(12)/=11) print *,117
if (p(13)/=12) print *,118
p(n2:n2*n2*n3+1)=>p2
if (any(lbound(p)/=[2])) print *,201
if (any(ubound(p)/=[13])) print *,202
if (p(2)/=1) print *,101
if (p(3)/=2) print *,102
if (p(4)/=3) print *,103
if (p(5)/=4) print *,104
if (p(6)/=5) print *,111
if (p(7)/=6) print *,112
if (p(8)/=7) print *,113
if (p(9)/=8) print *,114
if (p(10)/=9) print *,115
if (p(11)/=10) print *,116
if (p(12)/=11) print *,117
if (p(13)/=12) print *,118
end
call s1(1,2,3)
print *,'pass'
end
