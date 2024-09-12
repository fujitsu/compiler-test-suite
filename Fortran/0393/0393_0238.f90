subroutine s1
character(2),target::pp(13)
character(2),pointer::p5(:,:,:,:,:)
character(2),pointer::p4(:,:,:,:)
character(2),pointer::p3(:,:,:)
character(2),pointer::p2(:,:)
character(2),pointer::p1(:)
pp(2::2)='12'
p1(6:11)=>pp(2::2)
if (any(p1/='12')) print *,801
if (any(ubound(p1)/=11)) print *,301
p2(2:3,3:5)=>pp(2::2)
if (any(p2/='12')) print *,802
if (any(ubound(p2)/=[3,5])) print *,302
p3(2:3,6:6,3:5)=>pp(2::2)
if (any(p3/='12')) print *,803
if (any(ubound(p3)/=[3,6,5])) print *,303
p4(2:3,6:6,7:7,3:5)=>pp(2::2)
if (any(p4/='12')) print *,804
if (any(ubound(p4)/=[3,6,7,5])) print *,304
p5(8:8,2:3,6:6,7:7,3:5)=>pp(2::2)
if (any(p5/='12')) print *,805
if (any(ubound(p5)/=[8,3,6,7,5])) print *,305
end subroutine
call s1
print *,'pass'
end
