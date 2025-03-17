call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
intrinsic iachar
intrinsic achar
intrinsic ibits
intrinsic ishftc
end 

subroutine test02()
if (iachar('a')     .ne.97) print *,'fail'
if (achar(88)     .ne.'X') print *,'fail'
if (ibits(14_1,1,3)     .ne.7) print *,'fail'
if (ibits(14_2,1,3)     .ne.7) print *,'fail'
if (ibits(14_4,1,3)     .ne.7) print *,'fail'
if (ibits(14_8,1,3)     .ne.7) print *,'fail'
if (ishftc(3_1,2,3)     .ne.5) print *,'fail'
if (ishftc(3_2,2,3)     .ne.5) print *,'fail'
if (ishftc(3_4,2,3)     .ne.5) print *,'fail'
if (ishftc(3_8,2,3)     .ne.5) print *,'fail'
end

subroutine test03()
parameter (i1=iachar('a'))
character c
parameter (c=achar(88))
parameter (i2=ibits(14_1,1,3))
parameter (i3=ibits(14_2,1,3))
parameter (i4=ibits(14_4,1,3))
parameter (i5=ibits(14_8,1,3))
parameter (i6=ishftc(3_1,2,3))
parameter (i7=ishftc(3_2,2,3))
parameter (i8=ishftc(3_4,2,3))
parameter (i9=ishftc(3_8,2,3))
if (c .ne.'X') print *,'fail'
if (i1.ne.97) print *,'fail'
if (i2.ne.7) print *,'fail'
if (i3.ne.7) print *,'fail'
if (i4.ne.7) print *,'fail'
if (i5.ne.7) print *,'fail'
if (i6.ne.5) print *,'fail'
if (i7.ne.5) print *,'fail'
if (i8.ne.5) print *,'fail'
if (i9.ne.5) print *,'fail'
end
