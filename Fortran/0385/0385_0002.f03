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

if(size(array=i1,kind=2).ne.100_2) call errtra
if(size(array=i1,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=i1,kind=2)).ne.2) call errtra
if(size(array=i1,kind=4).ne.100_4) call errtra
if(size(array=i1,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=i1,kind=4)).ne.4) call errtra
if(size(array=i1,kind=8).ne.100_8) call errtra
if(size(array=i1,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=i1,kind=8)).ne.8) call errtra

if(size(array=i2,kind=1).ne.100_1) call errtra
if(size(array=i2,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=i2,kind=1)).ne.1) call errtra
if(size(array=i2,kind=4).ne.100_4) call errtra
if(size(array=i2,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=i2,kind=4)).ne.4) call errtra
if(size(array=i2,kind=8).ne.100_8) call errtra
if(size(array=i2,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=i2,kind=8)).ne.8) call errtra

if(size(array=i4,kind=1).ne.100_1) call errtra
if(size(array=i4,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=i4,kind=1)).ne.1) call errtra
if(size(array=i4,kind=2).ne.100_2) call errtra
if(size(array=i4,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=i4,kind=2)).ne.2) call errtra
if(size(array=i4,kind=8).ne.100_8) call errtra
if(size(array=i4,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=i4,kind=8)).ne.8) call errtra

if(size(array=i8,kind=1).ne.100_1) call errtra
if(size(array=i8,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=i8,kind=1)).ne.1) call errtra
if(size(array=i8,kind=2).ne.100_2) call errtra
if(size(array=i8,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=i8,kind=2)).ne.2) call errtra
if(size(array=i8,kind=4).ne.100_4) call errtra
if(size(array=i8,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=i8,kind=4)).ne.4) call errtra

if(size(array=r,kind=1).ne.100_1) call errtra
if(size(array=r,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=r,kind=1)).ne.1) call errtra
if(size(array=r,kind=2).ne.100_2) call errtra
if(size(array=r,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=r,kind=2)).ne.2) call errtra
if(size(array=r,kind=4).ne.100_4) call errtra
if(size(array=r,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=r,kind=4)).ne.4) call errtra
if(size(array=r,kind=8).ne.100_8) call errtra
if(kind(size(array=r,kind=8)).ne.8) call errtra

if(size(array=d,kind=1).ne.100_1) call errtra
if(size(array=d,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=d,kind=1)).ne.1) call errtra
if(size(array=d,kind=2).ne.100_2) call errtra
if(size(array=d,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=d,kind=2)).ne.2) call errtra
if(size(array=d,kind=4).ne.100_4) call errtra
if(size(array=d,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=d,kind=4)).ne.4) call errtra
if(size(array=d,kind=8).ne.100_8) call errtra
if(size(array=d,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=d,kind=8)).ne.8) call errtra

if(size(array=q,kind=1).ne.100_1) call errtra
if(size(array=q,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=q,kind=1)).ne.1) call errtra
if(size(array=q,kind=2).ne.100_2) call errtra
if(size(array=q,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=q,kind=2)).ne.2) call errtra
if(size(array=q,kind=4).ne.100_4) call errtra
if(size(array=q,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=q,kind=4)).ne.4) call errtra
if(size(array=q,kind=8).ne.100_8) call errtra
if(size(array=q,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=q,kind=8)).ne.8) call errtra

if(size(array=c,kind=1).ne.100_1) call errtra
if(size(array=c,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=c,kind=1)).ne.1) call errtra
if(size(array=c,kind=2).ne.100_2) call errtra
if(size(array=c,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=c,kind=2)).ne.2) call errtra
if(size(array=c,kind=4).ne.100_4) call errtra
if(size(array=c,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=c,kind=4)).ne.4) call errtra
if(size(array=c,kind=8).ne.100_8) call errtra
if(size(array=c,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=c,kind=8)).ne.8) call errtra

if(size(array=cd,kind=1).ne.100_1) call errtra
if(size(array=cd,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=cd,kind=1)).ne.1) call errtra
if(size(array=cd,kind=2).ne.100_2) call errtra
if(size(array=cd,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=cd,kind=2)).ne.2) call errtra
if(size(array=cd,kind=4).ne.100_4) call errtra
if(size(array=cd,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=cd,kind=4)).ne.4) call errtra
if(size(array=cd,kind=8).ne.100_8) call errtra
if(size(array=cd,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=cd,kind=8)).ne.8) call errtra

if(size(array=cq,kind=1).ne.100_1) call errtra
if(size(array=cq,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=cq,kind=1)).ne.1) call errtra
if(size(array=cq,kind=2).ne.100_2) call errtra
if(size(array=cq,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=cq,kind=2)).ne.2) call errtra
if(size(array=cq,kind=4).ne.100_4) call errtra
if(size(array=cq,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=cq,kind=4)).ne.4) call errtra
if(size(array=cq,kind=8).ne.100_8) call errtra
if(size(array=cq,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=cq,kind=8)).ne.8) call errtra

if(size(array=l1,kind=2).ne.100_2) call errtra
if(size(array=l1,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=l1,kind=2)).ne.2) call errtra
if(size(array=l1,kind=4).ne.100_4) call errtra
if(size(array=l1,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=l1,kind=4)).ne.4) call errtra
if(size(array=l1,kind=8).ne.100_8) call errtra
if(size(array=l1,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=l1,kind=8)).ne.8) call errtra

if(size(array=l2,kind=1).ne.100_1) call errtra
if(size(array=l2,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=l2,kind=1)).ne.1) call errtra
if(size(array=l2,kind=4).ne.100_4) call errtra
if(size(array=l2,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=l2,kind=4)).ne.4) call errtra
if(size(array=l2,kind=8).ne.100_8) call errtra
if(size(array=l2,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=l2,kind=8)).ne.8) call errtra

if(size(array=l4,kind=1).ne.100_1) call errtra
if(size(array=l4,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=l4,kind=1)).ne.1) call errtra
if(size(array=l4,kind=2).ne.100_2) call errtra
if(size(array=l4,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=l4,kind=2)).ne.2) call errtra
if(size(array=l4,kind=8).ne.100_8) call errtra
if(size(array=l4,kind=8,dim=1).ne.10_8) call errtra
if(kind(size(array=l4,kind=8)).ne.8) call errtra

if(size(array=l8,kind=1).ne.100_1) call errtra
if(size(array=l8,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=l8,kind=1)).ne.1) call errtra
if(size(array=l8,kind=2).ne.100_2) call errtra
if(size(array=l8,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=l8,kind=2)).ne.2) call errtra
if(size(array=l8,kind=4).ne.100_4) call errtra
if(size(array=l8,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=l8,kind=4)).ne.4) call errtra

if(size(array=ch,kind=1).ne.100_1) call errtra
if(size(array=ch,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=ch,kind=1)).ne.1) call errtra
if(size(array=ch,kind=2).ne.100_2) call errtra
if(size(array=ch,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=ch,kind=2)).ne.2) call errtra
if(size(array=ch,kind=4).ne.100_4) call errtra
if(size(array=ch,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=ch,kind=4)).ne.4) call errtra

end
