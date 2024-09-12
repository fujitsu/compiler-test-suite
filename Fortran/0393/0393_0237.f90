subroutine s1
logical,target::pp(13)
logical,pointer::p5(:,:,:,:,:)
logical,pointer::p4(:,:,:,:)
logical,pointer::p3(:,:,:)
logical,pointer::p2(:,:)
logical,pointer::p1(:)
pp(2::2)=.true.
p1(6:11)=>pp(2::2)
if (any(.not.p1)) print *,801
if (any(ubound(p1)/=11)) print *,301
p2(2:3,3:5)=>pp(2::2)
if (any(.not.p2)) print *,802
if (any(ubound(p2)/=[3,5])) print *,302
p3(2:3,6:6,3:5)=>pp(2::2)
if (any(.not.p3)) print *,803
if (any(ubound(p3)/=[3,6,5])) print *,303
p4(2:3,6:6,7:7,3:5)=>pp(2::2)
if (any(.not.p4)) print *,804
if (any(ubound(p4)/=[3,6,7,5])) print *,304
p5(8:8,2:3,6:6,7:7,3:5)=>pp(2::2)
if (any(.not.p5)) print *,805
if (any(ubound(p5)/=[8,3,6,7,5])) print *,305
end subroutine
call s1
print *,'pass'
end
