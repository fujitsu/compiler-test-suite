call aaaaa
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

if(any(ubound(i1,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=i1,kind=2).ne.10) call errtra
if(kind(ubound(i1,kind=2)).ne.2) call errtra
if(any(ubound(i1,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=i1,kind=4).ne.10) call errtra
if(kind(ubound(i1,kind=4)).ne.4) call errtra
if(any(ubound(i1,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=i1,kind=8).ne.10) call errtra
if(kind(ubound(i1,kind=8)).ne.8) call errtra

if(any(ubound(i2,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=i2,kind=1).ne.10) call errtra
if(kind(ubound(i2,kind=1)).ne.1) call errtra
if(any(ubound(i2,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=i2,kind=4).ne.10) call errtra
if(kind(ubound(i2,kind=4)).ne.4) call errtra
if(any(ubound(i2,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=i2,kind=8).ne.10) call errtra
if(kind(ubound(i2,kind=8)).ne.8) call errtra

if(any(ubound(i4,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=i4,kind=1).ne.10) call errtra
if(kind(ubound(i4,kind=1)).ne.1) call errtra
if(any(ubound(i4,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=i4,kind=2).ne.10) call errtra
if(kind(ubound(i4,kind=2)).ne.2) call errtra
if(any(ubound(i4,kind=8)/=(/10_8,10_8/))) call errtra
if(kind(ubound(i4,kind=8)).ne.8) call errtra

if(any(ubound(i8,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=i8,kind=1).ne.10) call errtra
if(kind(ubound(i8,kind=1)).ne.1) call errtra
if(any(ubound(i8,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=i8,kind=2).ne.10) call errtra
if(kind(ubound(i8,kind=2)).ne.2) call errtra
if(any(ubound(i8,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=i8,kind=4).ne.10) call errtra
if(kind(ubound(i8,kind=4)).ne.4) call errtra

if(any(ubound(r,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=r,kind=1).ne.10) call errtra
if(kind(ubound(r,kind=1)).ne.1) call errtra
if(any(ubound(r,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=r,kind=2).ne.10) call errtra
if(kind(ubound(r,kind=2)).ne.2) call errtra
if(any(ubound(r,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=r,kind=4).ne.10) call errtra
if(kind(ubound(r,kind=4)).ne.4) call errtra
if(any(ubound(r,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=r,kind=8).ne.10) call errtra
if(kind(ubound(r,kind=8)).ne.8) call errtra

if(any(ubound(d,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=d,kind=1).ne.10) call errtra
if(kind(ubound(d,kind=1)).ne.1) call errtra
if(any(ubound(d,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=d,kind=2).ne.10) call errtra
if(kind(ubound(d,kind=2)).ne.2) call errtra
if(any(ubound(d,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=d,kind=4).ne.10) call errtra
if(kind(ubound(d,kind=4)).ne.4) call errtra
if(any(ubound(d,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=d,kind=8).ne.10) call errtra
if(kind(ubound(d,kind=8)).ne.8) call errtra

if(any(ubound(q,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=q,kind=1).ne.10) call errtra
if(kind(ubound(q,kind=1)).ne.1) call errtra
if(any(ubound(q,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=q,kind=2).ne.10) call errtra
if(kind(ubound(q,kind=2)).ne.2) call errtra
if(any(ubound(q,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=q,kind=4).ne.10) call errtra
if(kind(ubound(q,kind=4)).ne.4) call errtra
if(any(ubound(q,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=q,kind=8).ne.10) call errtra
if(kind(ubound(q,kind=8)).ne.8) call errtra

if(any(ubound(c,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=c,kind=1).ne.10) call errtra
if(kind(ubound(c,kind=1)).ne.1) call errtra
if(any(ubound(c,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=c,kind=2).ne.10) call errtra
if(kind(ubound(c,kind=2)).ne.2) call errtra
if(any(ubound(c,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=c,kind=4).ne.10) call errtra
if(kind(ubound(c,kind=4)).ne.4) call errtra
if(any(ubound(c,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=c,kind=8).ne.10) call errtra
if(kind(ubound(c,kind=8)).ne.8) call errtra

if(any(ubound(cd,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=cd,kind=1).ne.10) call errtra
if(kind(ubound(cd,kind=1)).ne.1) call errtra
if(any(ubound(cd,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=cd,kind=2).ne.10) call errtra
if(kind(ubound(cd,kind=2)).ne.2) call errtra
if(any(ubound(cd,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=cd,kind=4).ne.10) call errtra
if(kind(ubound(cd,kind=4)).ne.4) call errtra
if(any(ubound(cd,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=cd,kind=8).ne.10) call errtra
if(kind(ubound(cd,kind=8)).ne.8) call errtra

if(any(ubound(cq,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=cq,kind=1).ne.10) call errtra
if(kind(ubound(cq,kind=1)).ne.1) call errtra
if(any(ubound(cq,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=cq,kind=2).ne.10) call errtra
if(kind(ubound(cq,kind=2)).ne.2) call errtra
if(any(ubound(cq,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=cq,kind=4).ne.10) call errtra
if(kind(ubound(cq,kind=4)).ne.4) call errtra
if(any(ubound(cq,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=cq,kind=8).ne.10) call errtra
if(kind(ubound(cq,kind=8)).ne.8) call errtra

if(any(ubound(l1,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=l1,kind=2).ne.10) call errtra
if(kind(ubound(l1,kind=2)).ne.2) call errtra
if(any(ubound(l1,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=l1,kind=4).ne.10) call errtra
if(kind(ubound(l1,kind=4)).ne.4) call errtra
if(any(ubound(l1,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=l1,kind=8).ne.10) call errtra
if(kind(ubound(l1,kind=8)).ne.8) call errtra

if(any(ubound(l2,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=l2,kind=1).ne.10) call errtra
if(kind(ubound(l2,kind=1)).ne.1) call errtra
if(any(ubound(l2,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=l2,kind=4).ne.10) call errtra
if(kind(ubound(l2,kind=4)).ne.4) call errtra
if(any(ubound(l2,kind=8)/=(/10_8,10_8/))) call errtra
if(ubound(dim=2,array=l2,kind=8).ne.10) call errtra
if(kind(ubound(l2,kind=8)).ne.8) call errtra

if(any(ubound(l4,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=l4,kind=1).ne.10) call errtra
if(kind(ubound(l4,kind=1)).ne.1) call errtra
if(any(ubound(l4,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=l4,kind=2).ne.10) call errtra
if(kind(ubound(l4,kind=2)).ne.2) call errtra
if(any(ubound(l4,kind=8)/=(/10_8,10_8/))) call errtra
if(kind(ubound(l4,kind=8)).ne.8) call errtra

if(any(ubound(l8,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=l8,kind=1).ne.10) call errtra
if(kind(ubound(l8,kind=1)).ne.1) call errtra
if(any(ubound(l8,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=l8,kind=2).ne.10) call errtra
if(kind(ubound(l8,kind=2)).ne.2) call errtra
if(any(ubound(l8,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=l8,kind=4).ne.10) call errtra
if(kind(ubound(l8,kind=4)).ne.4) call errtra

if(any(ubound(ch,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=ch,kind=1).ne.10) call errtra
if(kind(ubound(ch,kind=1)).ne.1) call errtra
if(any(ubound(ch,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=ch,kind=2).ne.10) call errtra
if(kind(ubound(ch,kind=2)).ne.2) call errtra
if(any(ubound(ch,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=ch,kind=4).ne.10) call errtra
if(kind(ubound(ch,kind=4)).ne.4) call errtra

end