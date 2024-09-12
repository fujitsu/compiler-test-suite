subroutine s1
real(8),contiguous,pointer::pp(:)
real(8),contiguous,pointer::p5(:,:,:,:,:)
real(8),contiguous,pointer::p4(:,:,:,:)
real(8),contiguous,pointer::p3(:,:,:)
real(8),contiguous,pointer::p2(:,:)
real(8),contiguous,pointer::p1(:)
allocate (pp(6))
pp=2
p1(6:11)=>pp
if (any(p1/=2)) print *,801
if (any(ubound(p1)/=11)) print *,301
p2(2:3,3:5)=>pp
if (any(p2/=2)) print *,802
if (any(ubound(p2)/=[3,5])) print *,302
p3(2:3,6:6,3:5)=>pp
if (any(p3/=2)) print *,803
if (any(ubound(p3)/=[3,6,5])) print *,303
p4(2:3,6:6,7:7,3:5)=>pp
if (any(p4/=2)) print *,804
if (any(ubound(p4)/=[3,6,7,5])) print *,304
p5(8:8,2:3,6:6,7:7,3:5)=>pp
if (any(p5/=2)) print *,805
if (any(ubound(p5)/=[8,3,6,7,5])) print *,305
end subroutine
call s1
print *,'pass'
end
