call aaaaa
call bbbbb
call ccccc
call ddddd
print *,'pass'
contains
subroutine aaaaa
character(kind=4,len=4100)::ch(10,10)
if(any(ubound(ch,kind=1)/=(/10_1,10_1/))) call errtra
if(ubound(dim=2,array=ch,kind=1).ne.10) call errtra
if(kind(ubound(ch,kind=1)).ne.1) call errtra
if(any(ubound(ch,kind=2)/=(/10_2,10_2/))) call errtra
if(ubound(dim=2,array=ch,kind=2).ne.10) call errtra
if(kind(ubound(ch,kind=2)).ne.2) call errtra
if(any(ubound(ch,kind=4)/=(/10_4,10_4/))) call errtra
if(ubound(dim=2,array=ch,kind=4).ne.10) call errtra
if(kind(ubound(ch,kind=4)).ne.4) call errtra
end subroutine
subroutine bbbbb
character(kind=4,len=4100)::ch(10,10)
if(any(lbound(ch,kind=1)/=(/1_1,1_1/))) call errtra
if(lbound(dim=2,array=ch,kind=1).ne.1) call errtra
if(kind(lbound(ch,kind=1)).ne.1) call errtra
if(any(lbound(ch,kind=2)/=(/1_2,1_2/))) call errtra
if(lbound(dim=2,array=ch,kind=2).ne.1) call errtra
if(kind(lbound(ch,kind=2)).ne.2) call errtra
if(any(lbound(ch,kind=4)/=(/1_4,1_4/))) call errtra
if(lbound(dim=2,array=ch,kind=4).ne.1) call errtra
if(kind(lbound(ch,kind=4)).ne.4) call errtra
end subroutine
subroutine ccccc
character(kind=4,len=4100)::ch(10,10)
if(any(shape(ch,1)/=(/10_1,10_1/))) call errtra
if(kind(shape(ch,1)).ne.1) call errtra
if(any(shape(ch,2)/=(/10_2,10_2/))) call errtra
if(kind(shape(ch,2)).ne.2) call errtra
if(any(shape(ch,4)/=(/10_4,10_4/))) call errtra
if(kind(shape(ch,4)).ne.4) call errtra

if(any(shape(kind=1,source=ch)/=(/10_1,10_1/))) call errtra
if(kind(shape(kind=1,source=ch)).ne.1) call errtra
if(any(shape(kind=2,source=ch)/=(/10_2,10_2/))) call errtra
if(kind(shape(kind=2,source=ch)).ne.2) call errtra
if(any(shape(kind=4,source=ch)/=(/10_4,10_4/))) call errtra
if(kind(shape(kind=4,source=ch)).ne.4) call errtra
end subroutine
subroutine ddddd
character(kind=4,len=4100)::ch(10,10)
if(size(array=ch,kind=1).ne.100_1) call errtra
if(size(array=ch,kind=1,dim=1).ne.10_1) call errtra
if(kind(size(array=ch,kind=1)).ne.1) call errtra
if(size(array=ch,kind=2).ne.100_2) call errtra
if(size(array=ch,kind=2,dim=1).ne.10_2) call errtra
if(kind(size(array=ch,kind=2)).ne.2) call errtra
if(size(array=ch,kind=4).ne.100_4) call errtra
if(size(array=ch,kind=4,dim=1).ne.10_4) call errtra
if(kind(size(array=ch,kind=4)).ne.4) call errtra
end subroutine
end
