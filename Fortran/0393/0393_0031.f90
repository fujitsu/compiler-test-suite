subroutine s1(n1,n2,n3)
integer,pointer::p(:)
integer,pointer::p2(:,:,:,:)
allocate(p(12))
p=[1,2,3,4,5,6,7,8,9,10,11,12]
p2(1:2,1:2,1:1,1:3)=> p
if (any(lbound(p2)/=[1,1,1,1])) print *,201
if (any(ubound(p2)/=[2,2,1,3])) print *,202
if (p2(1,1,1,1)/=1) print *,101
if (p2(2,1,1,1)/=2) print *,102
if (p2(1,2,1,1)/=3) print *,103
if (p2(2,2,1,1)/=4) print *,104
if (p2(1,1,1,2)/=5) print *,111
if (p2(2,1,1,2)/=6) print *,112
if (p2(1,2,1,2)/=7) print *,113
if (p2(2,2,1,2)/=8) print *,114
if (p2(1,1,1,3)/=9) print *,115
if (p2(2,1,1,3)/=10) print *,116
if (p2(1,2,1,3)/=11) print *,117
if (p2(2,2,1,3)/=12) print *,118
p2(n1:n2,n1:n2,n1:n2-n1,n1:n3)=> p
if (any(lbound(p2)/=[1,1,1,1])) print *,201
if (any(ubound(p2)/=[2,2,1,3])) print *,202
if (p2(1,1,1,1)/=1) print *,101
if (p2(2,1,1,1)/=2) print *,102
if (p2(1,2,1,1)/=3) print *,103
if (p2(2,2,1,1)/=4) print *,104
if (p2(1,1,1,2)/=5) print *,111
if (p2(2,1,1,2)/=6) print *,112
if (p2(1,2,1,2)/=7) print *,113
if (p2(2,2,1,2)/=8) print *,114
if (p2(1,1,1,3)/=9) print *,115
if (p2(2,1,1,3)/=10) print *,116
if (p2(1,2,1,3)/=11) print *,117
if (p2(2,2,1,3)/=12) print *,118
end
call s1(1,2,3)
print *,'pass'
end
