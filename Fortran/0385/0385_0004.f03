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

if(any(lbound(i1,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=i1,kind=2).ne.1) call errtra
if(kind(lbound(i1,kind=2)).ne.2) call errtra
if(any(lbound(i1,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=i1,kind=4).ne.1) call errtra
if(kind(lbound(i1,kind=4)).ne.4) call errtra
if(any(lbound(i1,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=i1,kind=8).ne.1) call errtra
if(kind(lbound(i1,kind=8)).ne.8) call errtra

if(any(lbound(i2,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=i2,kind=1).ne.1) call errtra
if(kind(lbound(i2,kind=1)).ne.1) call errtra
if(any(lbound(i2,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=i2,kind=4).ne.1) call errtra
if(kind(lbound(i2,kind=4)).ne.4) call errtra
if(any(lbound(i2,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=i2,kind=8).ne.1) call errtra
if(kind(lbound(i2,kind=8)).ne.8) call errtra

if(any(lbound(i4,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=i4,kind=1).ne.1) call errtra
if(kind(lbound(i4,kind=1)).ne.1) call errtra
if(any(lbound(i4,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=i4,kind=2).ne.1) call errtra
if(kind(lbound(i4,kind=2)).ne.2) call errtra
if(any(lbound(i4,kind=8)/=(/1_8,1_8/))) call errtra
if(kind(lbound(i4,kind=8)).ne.8) call errtra

if(any(lbound(i8,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=i8,kind=1).ne.1) call errtra
if(kind(lbound(i8,kind=1)).ne.1) call errtra
if(any(lbound(i8,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=i8,kind=2).ne.1) call errtra
if(kind(lbound(i8,kind=2)).ne.2) call errtra
if(any(lbound(i8,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=i8,kind=4).ne.1) call errtra
if(kind(lbound(i8,kind=4)).ne.4) call errtra

if(any(lbound(r,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=r,kind=1).ne.1) call errtra
if(kind(lbound(r,kind=1)).ne.1) call errtra
if(any(lbound(r,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=r,kind=2).ne.1) call errtra
if(kind(lbound(r,kind=2)).ne.2) call errtra
if(any(lbound(r,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=r,kind=4).ne.1) call errtra
if(kind(lbound(r,kind=4)).ne.4) call errtra
if(any(lbound(r,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=r,kind=8).ne.1) call errtra
if(kind(lbound(r,kind=8)).ne.8) call errtra

if(any(lbound(d,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=d,kind=1).ne.1) call errtra
if(kind(lbound(d,kind=1)).ne.1) call errtra
if(any(lbound(d,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=d,kind=2).ne.1) call errtra
if(kind(lbound(d,kind=2)).ne.2) call errtra
if(any(lbound(d,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=d,kind=4).ne.1) call errtra
if(kind(lbound(d,kind=4)).ne.4) call errtra
if(any(lbound(d,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=d,kind=8).ne.1) call errtra
if(kind(lbound(d,kind=8)).ne.8) call errtra

if(any(lbound(q,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=q,kind=1).ne.1) call errtra
if(kind(lbound(q,kind=1)).ne.1) call errtra
if(any(lbound(q,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=q,kind=2).ne.1) call errtra
if(kind(lbound(q,kind=2)).ne.2) call errtra
if(any(lbound(q,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=q,kind=4).ne.1) call errtra
if(kind(lbound(q,kind=4)).ne.4) call errtra
if(any(lbound(q,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=q,kind=8).ne.1) call errtra
if(kind(lbound(q,kind=8)).ne.8) call errtra

if(any(lbound(c,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=c,kind=1).ne.1) call errtra
if(kind(lbound(c,kind=1)).ne.1) call errtra
if(any(lbound(c,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=c,kind=2).ne.1) call errtra
if(kind(lbound(c,kind=2)).ne.2) call errtra
if(any(lbound(c,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=c,kind=4).ne.1) call errtra
if(kind(lbound(c,kind=4)).ne.4) call errtra
if(any(lbound(c,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=c,kind=8).ne.1) call errtra
if(kind(lbound(c,kind=8)).ne.8) call errtra

if(any(lbound(cd,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=cd,kind=1).ne.1) call errtra
if(kind(lbound(cd,kind=1)).ne.1) call errtra
if(any(lbound(cd,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=cd,kind=2).ne.1) call errtra
if(kind(lbound(cd,kind=2)).ne.2) call errtra
if(any(lbound(cd,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=cd,kind=4).ne.1) call errtra
if(kind(lbound(cd,kind=4)).ne.4) call errtra
if(any(lbound(cd,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=cd,kind=8).ne.1) call errtra
if(kind(lbound(cd,kind=8)).ne.8) call errtra

if(any(lbound(cq,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=cq,kind=1).ne.1) call errtra
if(kind(lbound(cq,kind=1)).ne.1) call errtra
if(any(lbound(cq,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=cq,kind=2).ne.1) call errtra
if(kind(lbound(cq,kind=2)).ne.2) call errtra
if(any(lbound(cq,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=cq,kind=4).ne.1) call errtra
if(kind(lbound(cq,kind=4)).ne.4) call errtra
if(any(lbound(cq,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=cq,kind=8).ne.1) call errtra
if(kind(lbound(cq,kind=8)).ne.8) call errtra

if(any(lbound(l1,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=l1,kind=2).ne.1) call errtra
if(kind(lbound(l1,kind=2)).ne.2) call errtra
if(any(lbound(l1,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=l1,kind=4).ne.1) call errtra
if(kind(lbound(l1,kind=4)).ne.4) call errtra
if(any(lbound(l1,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=l1,kind=8).ne.1) call errtra
if(kind(lbound(l1,kind=8)).ne.8) call errtra

if(any(lbound(l2,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=l2,kind=1).ne.1) call errtra
if(kind(lbound(l2,kind=1)).ne.1) call errtra
if(any(lbound(l2,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=l2,kind=4).ne.1) call errtra
if(kind(lbound(l2,kind=4)).ne.4) call errtra
if(any(lbound(l2,kind=8)/=(/1_8,1_8/))) call errtra
if(lbound(dim=2,array=l2,kind=8).ne.1) call errtra
if(kind(lbound(l2,kind=8)).ne.8) call errtra

if(any(lbound(l4,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=l4,kind=1).ne.1) call errtra
if(kind(lbound(l4,kind=1)).ne.1) call errtra
if(any(lbound(l4,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=l4,kind=2).ne.1) call errtra
if(kind(lbound(l4,kind=2)).ne.2) call errtra
if(any(lbound(l4,kind=8)/=(/1_8,1_8/))) call errtra
if(kind(lbound(l4,kind=8)).ne.8) call errtra

if(any(lbound(l8,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=l8,kind=1).ne.1) call errtra
if(kind(lbound(l8,kind=1)).ne.1) call errtra
if(any(lbound(l8,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=l8,kind=2).ne.1) call errtra
if(kind(lbound(l8,kind=2)).ne.2) call errtra
if(any(lbound(l8,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=l8,kind=4).ne.1) call errtra
if(kind(lbound(l8,kind=4)).ne.4) call errtra

if(any(lbound(ch,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=ch,kind=1).ne.1) call errtra
if(kind(lbound(ch,kind=1)).ne.1) call errtra
if(any(lbound(ch,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=ch,kind=2).ne.1) call errtra
if(kind(lbound(ch,kind=2)).ne.2) call errtra
if(any(lbound(ch,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=ch,kind=4).ne.1) call errtra
if(kind(lbound(ch,kind=4)).ne.4) call errtra

end