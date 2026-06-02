call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa
character(len=4) ch4
character(len=8) ch8
character(len=16) ch16
integer(kind=selected_int_kind(8)) i4
integer(kind=selected_int_kind(16)) i8
call s1(ch4,ch8,ch16,i4,i8)
call s2(ch4,ch8,ch16,i4,i8)
end subroutine
subroutine bbbbb
character(len=1) ch1
character(len=2) ch2
character(len=4) ch4
character(len=8) ch8
integer(kind=selected_int_kind(2)) i1
integer(kind=selected_int_kind(4)) i2
integer(kind=selected_int_kind(8)) i4
integer(kind=selected_int_kind(16)) i8
call b1(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
call b2(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
call b3(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
call b4(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
call b5(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
call b6(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
end subroutine
subroutine s1(ch4,ch8,ch16,i4,i8)
character(len=*)::ch4,ch8,ch16
integer(kind=4)::i4
integer(kind=8)::i8
real(kind=4)::r
r=2.873
if(aint(r,bit_size(i4)/8).ne.2.0_4) print *,'fail'
if(aint(r,bit_size(i4)/4).ne.2.0d0) print *,'fail'
if(aint(r,bit_size(i4)/2).ne.2.0q0) print *,'fail'
if(aint(r,kind(i4)).ne.2.0) print *,'fail'
if(aint(r,kind(i8)).ne.2.0d0) print *,'fail'
if(aint(r,kind(i8)*2).ne.2.0q0) print *,'fail'
end subroutine
subroutine s2(ch4,ch8,ch16,i4,i8)
character(len=*)::ch4,ch8,ch16
integer(kind=4)::i4
integer(kind=8)::i8
real(kind=4)::r
r=2.873
if(anint(r,bit_size(i4)/8).ne.3.0_4) print *,'fail'
if(anint(r,bit_size(i4)/4).ne.3.0d0) print *,'fail'
if(anint(r,bit_size(i4)/2).ne.3.0q0) print *,'fail'
if(anint(r,kind(i4)).ne.3.0) print *,'fail'
if(anint(r,kind(i8)).ne.3.0d0) print *,'fail'
if(anint(r,kind(i8)*2).ne.3.0q0) print *,'fail'
end subroutine
subroutine b1(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
character(len=*)::ch1,ch2,ch4,ch8
integer(kind=1)::i1
integer(kind=2)::i2
integer(kind=4)::i4
integer(kind=8)::i8
real(kind=4)::r
r=2.873
if(nint(r,bit_size(i1)/8).ne.3_1) print *,'fail'
if(nint(r,bit_size(i1)/4).ne.3_2) print *,'fail'
if(nint(r,bit_size(i1)/2).ne.3_4) print *,'fail'
if(nint(r,bit_size(i1)).ne.3_8) print *,'fail'
if(nint(r,kind(i1)).ne.3_1) print *,'fail'
if(nint(r,kind(i2)).ne.3_2) print *,'fail'
if(nint(r,kind(i4)).ne.3_4) print *,'fail'
if(nint(r,kind(i8)).ne.3_8) print *,'fail'
end subroutine
subroutine b2(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
character(len=*)::ch1,ch2,ch4,ch8
integer(kind=1)::i1
integer(kind=2)::i2
integer(kind=4)::i4
integer(kind=8)::i8
real(kind=4)::r
r=2.873
if(int(r,bit_size(i1)/8).ne.2_1) print *,'fail'
if(int(r,bit_size(i1)/4).ne.2_2) print *,'fail'
if(int(r,bit_size(i1)/2).ne.2_4) print *,'fail'
if(int(r,bit_size(i1)).ne.2_8) print *,'fail'
if(int(r,kind(i1)).ne.2_1) print *,'fail'
if(int(r,kind(i2)).ne.2_2) print *,'fail'
if(int(r,kind(i4)).ne.2_4) print *,'fail'
if(int(r,kind(i8)).ne.2_8) print *,'fail'
end subroutine
subroutine b3(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
character(len=*)::ch1,ch2,ch4,ch8
integer(kind=1)::i1
integer(kind=2)::i2
integer(kind=4)::i4
integer(kind=8)::i8
real(kind=4)::r(3,10)
if(ubound(r,2,bit_size(i1)/8).ne.10_1) print *,'fail'
if(ubound(r,2,bit_size(i1)/4).ne.10_2) print *,'fail'
if(ubound(r,2,bit_size(i1)/2).ne.10_4) print *,'fail'
if(ubound(r,2,bit_size(i1)).ne.10_8) print *,'fail'
if(ubound(r,2,kind(i1)).ne.10_1) print *,'fail'
if(ubound(r,2,kind(i2)).ne.10_2) print *,'fail'
if(ubound(r,2,kind(i4)).ne.10_4) print *,'fail'
if(ubound(r,2,kind(i8)).ne.10_8) print *,'fail'
if(lbound(r,1,bit_size(i1)/8).ne.1_1) print *,'fail'
if(lbound(r,1,bit_size(i1)/4).ne.1_2) print *,'fail'
if(lbound(r,1,bit_size(i1)/2).ne.1_4) print *,'fail'
if(lbound(r,1,bit_size(i1)).ne.1_8) print *,'fail'
if(lbound(r,1,kind(i1)).ne.1_1) print *,'fail'
if(lbound(r,1,kind(i2)).ne.1_2) print *,'fail'
if(lbound(r,1,kind(i4)).ne.1_4) print *,'fail'
if(lbound(r,1,kind(i8)).ne.1_8) print *,'fail'
if(size(r,2,bit_size(i1)/8).ne.10_1) print *,'fail'
if(size(r,2,bit_size(i1)/4).ne.10_2) print *,'fail'
if(size(r,2,bit_size(i1)/2).ne.10_4) print *,'fail'
if(size(r,2,bit_size(i1)).ne.10_8) print *,'fail'
if(size(r,2,kind(i1)).ne.10_1) print *,'fail'
if(size(r,2,kind(i2)).ne.10_2) print *,'fail'
if(size(r,2,kind(i4)).ne.10_4) print *,'fail'
if(size(r,2,kind(i8)).ne.10_8) print *,'fail'
if(any(shape(r,bit_size(i1)/8).ne.(/3_1,10_1/))) print *,'fail'
if(any(shape(r,bit_size(i1)/4).ne.(/3_2,10_2/))) print *,'fail'
if(any(shape(r,bit_size(i1)/2).ne.(/3_4,10_4/))) print *,'fail'
if(any(shape(r,bit_size(i1)).ne.(/3_8,10_8/))) print *,'fail'
if(any(shape(r,kind(i1)).ne.(/3_1,10_1/))) print *,'fail'
if(any(shape(r,kind(i2)).ne.(/3_2,10_2/))) print *,'fail'
if(any(shape(r,kind(i4)).ne.(/3_4,10_4/))) print *,'fail'
if(any(shape(r,kind(i8)).ne.(/3_8,10_8/))) print *,'fail'
end subroutine
subroutine b4(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
character(len=*)::ch1,ch2,ch4,ch8
integer(kind=1)::i1
integer(kind=2)::i2
integer(kind=4)::i4
integer(kind=8)::i8
character(len=7)::ach1
character(len=1)::ach2
ach1="fortran"
ach2="r"
if(index(ach1,ach2,kind=bit_size(i1)/8).ne.3_1) print *,'fail'
if(index(ach1,ach2,kind=bit_size(i1)/4).ne.3_2) print *,'fail'
if(index(ach1,ach2,kind=bit_size(i1)/2).ne.3_4) print *,'fail'
if(index(ach1,ach2,kind=bit_size(i1)).ne.3_8) print *,'fail'
if(index(ach1,ach2,kind=kind(i1)).ne.3_1) print *,'fail'
if(index(ach1,ach2,kind=kind(i2)).ne.3_2) print *,'fail'
if(index(ach1,ach2,kind=kind(i4)).ne.3_4) print *,'fail'
if(index(ach1,ach2,kind=kind(i8)).ne.3_8) print *,'fail'
end subroutine
subroutine b5(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
character(len=*)::ch1,ch2,ch4,ch8
integer(kind=1)::i1
integer(kind=2)::i2
integer(kind=4)::i4
integer(kind=8)::i8
character(len=7)::ach1
character(len=2)::ach2
ach1="fortran"
ach2="tr"
if(scan(ach1,ach2,kind=bit_size(i1)/8).ne.3_1) print *,'fail'
if(scan(ach1,ach2,kind=bit_size(i1)/4).ne.3_2) print *,'fail'
if(scan(ach1,ach2,kind=bit_size(i1)/2).ne.3_4) print *,'fail'
if(scan(ach1,ach2,kind=bit_size(i1)).ne.3_8) print *,'fail'
if(scan(ach1,ach2,kind=kind(i1)).ne.3_1) print *,'fail'
if(scan(ach1,ach2,kind=kind(i2)).ne.3_2) print *,'fail'
if(scan(ach1,ach2,kind=kind(i4)).ne.3_4) print *,'fail'
if(scan(ach1,ach2,kind=kind(i8)).ne.3_8) print *,'fail'
end subroutine
subroutine b6(ch1,ch2,ch4,ch8,i1,i2,i4,i8)
character(len=*)::ch1,ch2,ch4,ch8
integer(kind=1)::i1
integer(kind=2)::i2
integer(kind=4)::i4
integer(kind=8)::i8
character(len=4)::ach1
character(len=1)::ach2
ach1="abba"
ach2="a"
if(verify(ach1,ach2,kind=bit_size(i1)/8).ne.2_1) print *,'fail'
if(verify(ach1,ach2,kind=bit_size(i1)/4).ne.2_2) print *,'fail'
if(verify(ach1,ach2,kind=bit_size(i1)/2).ne.2_4) print *,'fail'
if(verify(ach1,ach2,kind=bit_size(i1)).ne.2_8) print *,'fail'
if(verify(ach1,ach2,kind=kind(i1)).ne.2_1) print *,'fail'
if(verify(ach1,ach2,kind=kind(i2)).ne.2_2) print *,'fail'
if(verify(ach1,ach2,kind=kind(i4)).ne.2_4) print *,'fail'
if(verify(ach1,ach2,kind=kind(i8)).ne.2_8) print *,'fail'
end subroutine
end
