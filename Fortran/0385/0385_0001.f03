call aaaaa
call bbbbb
print *,'pass'
end
subroutine aaaaa
integer(kind=1)::i1(10,10)
integer(kind=2)::i2(10,10)
integer(kind=4)::i4(10,10)
integer(kind=8)::i8(10,10)
real(kind=4)::r(10,10)
real(kind=8)::d(10,10)
real(kind=16)::q(10,10)
complex(kind=4)::c(10,10)
complex(kind=8)::cd(10,10)
complex(kind=16)::cq(10,10)
logical(kind=1)::l1(10,10)
logical(kind=2)::l2(10,10)
logical(kind=4)::l4(10,10)
logical(kind=8)::l8(10,10)
character(kind=1,len=1000)::ch(10,10)

if(any(shape(i1,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(i1,1)).ne.1) print *,'fail'
if(any(shape(i1,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(i1,2)).ne.2) print *,'fail'
if(any(shape(i1,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(i1,4)).ne.4) print *,'fail'
if(any(shape(i1,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(i1,8)).ne.8) print *,'fail'

if(any(shape(i2,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(i2,1)).ne.1) print *,'fail'
if(any(shape(i2,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(i2,4)).ne.4) print *,'fail'
if(any(shape(i2,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(i2,8)).ne.8) print *,'fail'

if(any(shape(i4,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(i4,1)).ne.1) print *,'fail'
if(any(shape(i4,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(i4,2)).ne.2) print *,'fail'
if(any(shape(i4,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(i4,8)).ne.8) print *,'fail'

if(any(shape(i8,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(i8,1)).ne.1) print *,'fail'
if(any(shape(i8,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(i8,2)).ne.2) print *,'fail'
if(any(shape(i8,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(i8,4)).ne.4) print *,'fail'

if(any(shape(r,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(r,1)).ne.1) print *,'fail'
if(any(shape(r,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(r,2)).ne.2) print *,'fail'
if(any(shape(r,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(r,4)).ne.4) print *,'fail'
if(any(shape(r,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(r,8)).ne.8) print *,'fail'

if(any(shape(d,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(d,1)).ne.1) print *,'fail'
if(any(shape(d,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(d,2)).ne.2) print *,'fail'
if(any(shape(d,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(d,4)).ne.4) print *,'fail'
if(any(shape(d,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(d,8)).ne.8) print *,'fail'

if(any(shape(q,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(q,1)).ne.1) print *,'fail'
if(any(shape(q,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(q,2)).ne.2) print *,'fail'
if(any(shape(q,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(q,4)).ne.4) print *,'fail'
if(any(shape(q,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(q,8)).ne.8) print *,'fail'

if(any(shape(c,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(c,1)).ne.1) print *,'fail'
if(any(shape(c,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(c,2)).ne.2) print *,'fail'
if(any(shape(c,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(c,4)).ne.4) print *,'fail'
if(any(shape(c,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(c,8)).ne.8) print *,'fail'

if(any(shape(cd,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(cd,1)).ne.1) print *,'fail'
if(any(shape(cd,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(cd,2)).ne.2) print *,'fail'
if(any(shape(cd,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(cd,4)).ne.4) print *,'fail'
if(any(shape(cd,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(cd,8)).ne.8) print *,'fail'

if(any(shape(cq,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(cq,1)).ne.1) print *,'fail'
if(any(shape(cq,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(cq,2)).ne.2) print *,'fail'
if(any(shape(cq,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(cq,4)).ne.4) print *,'fail'
if(any(shape(cq,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(cq,8)).ne.8) print *,'fail'

if(any(shape(l1,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(l1,2)).ne.2) print *,'fail'
if(any(shape(l1,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(l1,4)).ne.4) print *,'fail'
if(any(shape(l1,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(l1,8)).ne.8) print *,'fail'

if(any(shape(l2,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(l2,1)).ne.1) print *,'fail'
if(any(shape(l2,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(l2,4)).ne.4) print *,'fail'
if(any(shape(l2,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(l2,8)).ne.8) print *,'fail'

if(any(shape(l4,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(l4,1)).ne.1) print *,'fail'
if(any(shape(l4,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(l4,2)).ne.2) print *,'fail'
if(any(shape(l4,8)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(l4,8)).ne.8) print *,'fail'

if(any(shape(l8,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(l8,1)).ne.1) print *,'fail'
if(any(shape(l8,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(l8,2)).ne.2) print *,'fail'
if(any(shape(l8,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(l8,4)).ne.4) print *,'fail'

if(any(shape(ch,1)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(ch,1)).ne.1) print *,'fail'
if(any(shape(ch,2)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(ch,2)).ne.2) print *,'fail'
if(any(shape(ch,4)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(ch,4)).ne.4) print *,'fail'

end
subroutine bbbbb
integer(kind=1)::i1(10,10)
integer(kind=2)::i2(10,10)
integer(kind=4)::i4(10,10)
integer(kind=8)::i8(10,10)
real(kind=4)::r(10,10)
real(kind=8)::d(10,10)
real(kind=16)::q(10,10)
complex(kind=4)::c(10,10)
complex(kind=8)::cd(10,10)
complex(kind=16)::cq(10,10)
logical(kind=1)::l1(10,10)
logical(kind=2)::l2(10,10)
logical(kind=4)::l4(10,10)
logical(kind=8)::l8(10,10)
character(kind=1,len=1000)::ch(10,10)

if(any(shape(kind=2,source=i1)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=i1)).ne.2) print *,'fail'
if(any(shape(kind=4,source=i1)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=i1)).ne.4) print *,'fail'
if(any(shape(kind=8,source=i1)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=i1)).ne.8) print *,'fail'

if(any(shape(kind=1,source=i2)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=i2)).ne.1) print *,'fail'
if(any(shape(kind=4,source=i2)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=i2)).ne.4) print *,'fail'
if(any(shape(kind=8,source=i2)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=i2)).ne.8) print *,'fail'

if(any(shape(kind=1,source=i4)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=i4)).ne.1) print *,'fail'
if(any(shape(kind=2,source=i4)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=i4)).ne.2) print *,'fail'
if(any(shape(kind=8,source=i4)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=i4)).ne.8) print *,'fail'

if(any(shape(kind=1,source=i8)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=i8)).ne.1) print *,'fail'
if(any(shape(kind=2,source=i8)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=i8)).ne.2) print *,'fail'
if(any(shape(kind=4,source=i8)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=i8)).ne.4) print *,'fail'

if(any(shape(kind=1,source=r)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=r)).ne.1) print *,'fail'
if(any(shape(kind=2,source=r)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=r)).ne.2) print *,'fail'
if(any(shape(kind=4,source=r)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=r)).ne.4) print *,'fail'
if(any(shape(kind=8,source=r)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=r)).ne.8) print *,'fail'

if(any(shape(kind=1,source=d)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=d)).ne.1) print *,'fail'
if(any(shape(kind=2,source=d)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=d)).ne.2) print *,'fail'
if(any(shape(kind=4,source=d)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=d)).ne.4) print *,'fail'
if(any(shape(kind=8,source=d)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=d)).ne.8) print *,'fail'

if(any(shape(kind=1,source=q)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=q)).ne.1) print *,'fail'
if(any(shape(kind=2,source=q)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=q)).ne.2) print *,'fail'
if(any(shape(kind=4,source=q)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=q)).ne.4) print *,'fail'
if(any(shape(kind=8,source=q)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=q)).ne.8) print *,'fail'

if(any(shape(kind=1,source=c)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=c)).ne.1) print *,'fail'
if(any(shape(kind=2,source=c)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=c)).ne.2) print *,'fail'
if(any(shape(kind=4,source=c)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=c)).ne.4) print *,'fail'
if(any(shape(kind=8,source=c)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=c)).ne.8) print *,'fail'

if(any(shape(kind=1,source=cd)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=cd)).ne.1) print *,'fail'
if(any(shape(kind=2,source=cd)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=cd)).ne.2) print *,'fail'
if(any(shape(kind=4,source=cd)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=cd)).ne.4) print *,'fail'
if(any(shape(kind=8,source=cd)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=cd)).ne.8) print *,'fail'

if(any(shape(kind=1,source=cq)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=cq)).ne.1) print *,'fail'
if(any(shape(kind=2,source=cq)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=cq)).ne.2) print *,'fail'
if(any(shape(kind=4,source=cq)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=cq)).ne.4) print *,'fail'
if(any(shape(kind=8,source=cq)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=cq)).ne.8) print *,'fail'

if(any(shape(kind=2,source=l1)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=l1)).ne.2) print *,'fail'
if(any(shape(kind=4,source=l1)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=l1)).ne.4) print *,'fail'
if(any(shape(kind=8,source=l1)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=l1)).ne.8) print *,'fail'

if(any(shape(kind=1,source=l2)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=l2)).ne.1) print *,'fail'
if(any(shape(kind=4,source=l2)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=l2)).ne.4) print *,'fail'
if(any(shape(kind=8,source=l2)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=l2)).ne.8) print *,'fail'

if(any(shape(kind=1,source=l4)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=l4)).ne.1) print *,'fail'
if(any(shape(kind=2,source=l4)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=l4)).ne.2) print *,'fail'
if(any(shape(kind=8,source=l4)/=(/10_8,10_8/))) print *,'fail'
if(kind(shape(kind=8,source=l4)).ne.8) print *,'fail'

if(any(shape(kind=1,source=l8)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=l8)).ne.1) print *,'fail'
if(any(shape(kind=2,source=l8)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=l8)).ne.2) print *,'fail'
if(any(shape(kind=4,source=l8)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=l8)).ne.4) print *,'fail'

if(any(shape(kind=1,source=ch)/=(/10_1,10_1/))) print *,'fail'
if(kind(shape(kind=1,source=ch)).ne.1) print *,'fail'
if(any(shape(kind=2,source=ch)/=(/10_2,10_2/))) print *,'fail'
if(kind(shape(kind=2,source=ch)).ne.2) print *,'fail'
if(any(shape(kind=4,source=ch)/=(/10_4,10_4/))) print *,'fail'
if(kind(shape(kind=4,source=ch)).ne.4) print *,'fail'

end
