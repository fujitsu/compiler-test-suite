subroutine s1(k2)
character(:),contiguous,pointer::pp(:,:,:)
character(:),contiguous,pointer::p5(:,:,:,:,:)
character(:),contiguous,pointer::p4(:,:,:,:)
character(:),contiguous,pointer::p3(:,:,:)
character(:),contiguous,pointer::p2(:,:)
character(:),contiguous,pointer::p1(:)
allocate (character(k2)::pp(2,1,3))
pp='12'
p1(6:11)=>pp
if (any(p1/='12')) print *,801
if (any(ubound(p1)/=11)) print *,301
if (len(p1)/=2) print *,501
p2(2:3,3:5)=>pp
if (any(p2/='12')) print *,802
if (any(ubound(p2)/=[3,5])) print *,302
if (len(p2)/=2) print *,501
p3(2:3,6:6,3:5)=>pp
if (any(p3/='12')) print *,803
if (any(ubound(p3)/=[3,6,5])) print *,303
if (len(p3)/=2) print *,501
p4(2:3,6:6,7:7,3:5)=>pp
if (any(p4/='12')) print *,804
if (any(ubound(p4)/=[3,6,7,5])) print *,304
if (len(p4)/=2) print *,501
p5(8:8,2:3,6:6,7:7,3:5)=>pp
if (any(p5/='12')) print *,805
if (any(ubound(p5)/=[8,3,6,7,5])) print *,305
if (len(p5)/=2) print *,501
end subroutine
call s1(2)
print *,'pass'
end