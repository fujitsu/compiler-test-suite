call zz1
print *,'pass'
contains
subroutine zz1
integer(1) i1,ii1(10)
integer(2) i2,ii2(10)
integer(4) i4,ii4(10)
integer(8) i8,ii8(10)
integer,parameter::di1=digits(i1)
integer,parameter::dii1=digits(ii1)
integer,parameter::di2=digits(i2)
integer,parameter::dii2=digits(ii2)
integer,parameter::di4=digits(i4)
integer,parameter::dii4=digits(ii4)
integer,parameter::di8=digits(i8)
integer,parameter::dii8=digits(ii8)

integer,parameter::rai1=radix(i1)
integer,parameter::raii1=radix(ii1)
integer,parameter::rai2=radix(i2)
integer,parameter::raii2=radix(ii2)
integer,parameter::rai4=radix(i4)
integer,parameter::raii4=radix(ii4)
integer,parameter::rai8=radix(i8)
integer,parameter::raii8=radix(ii8)

integer,parameter::mii1=range(i1)
integer,parameter::miii1=range(ii1)
integer,parameter::mii2=range(i2)
integer,parameter::miii2=range(ii2)
integer,parameter::mii4=range(i4)
integer,parameter::miii4=range(ii4)
integer,parameter::mii8=range(i8)
integer,parameter::miii8=range(ii8)

integer(1),parameter::hi1=huge(i1)
integer(1),parameter::hii1=huge(ii1)
integer(2),parameter::hi2=huge(i2)
integer(2),parameter::hii2=huge(ii2)
integer(4),parameter::hi4=huge(i4)
integer(4),parameter::hii4=huge(ii4)
integer(8),parameter::hi8=huge(i8)
integer(8),parameter::hii8=huge(ii8)

if(digits(i1).ne.di1) print *,'fail'
if(digits(ii1).ne.dii1) print *,'fail'
if(di1.ne.dii1) print *,'fail'
if(digits(i2).ne.di2) print *,'fail'
if(digits(ii2).ne.dii2) print *,'fail'
if(di2.ne.dii2) print *,'fail'
if(digits(i4).ne.di4) print *,'fail'
if(digits(ii4).ne.dii4) print *,'fail'
if(di4.ne.dii4) print *,'fail'
if(digits(i8).ne.di8) print *,'fail'
if(digits(ii8).ne.dii8) print *,'fail'
if(di8.ne.dii8) print *,'fail'

if(radix(i1).ne.rai1) print *,'fail'
if(radix(ii1).ne.raii1) print *,'fail'
if(rai1.ne.raii1) print *,'fail'
if(radix(i2).ne.rai2) print *,'fail'
if(radix(ii2).ne.raii2) print *,'fail'
if(rai2.ne.raii2) print *,'fail'
if(radix(i4).ne.rai4) print *,'fail'
if(radix(ii4).ne.raii4) print *,'fail'
if(rai4.ne.raii4) print *,'fail'
if(radix(i8).ne.rai8) print *,'fail'
if(radix(ii8).ne.raii8) print *,'fail'
if(rai8.ne.raii8) print *,'fail'

if(range(i1).ne.mii1) print *,'fail'
if(range(ii1).ne.miii1) print *,'fail'
if(mii1.ne.miii1) print *,'fail'
if(range(i2).ne.mii2) print *,'fail'
if(range(ii2).ne.miii2) print *,'fail'
if(mii2.ne.miii2) print *,'fail'
if(range(i4).ne.mii4) print *,'fail'
if(range(ii4).ne.miii4) print *,'fail'
if(mii4.ne.miii4) print *,'fail'
if(range(i8).ne.mii8) print *,'fail'
if(range(ii8).ne.miii8) print *,'fail'
if(mii8.ne.miii8) print *,'fail'

if(huge(i1).ne.hi1) print *,'fail'
if(huge(ii1).ne.hii1) print *,'fail'
if(hi1.ne.hii1) print *,'fail'
if(huge(i2).ne.hi2) print *,'fail'
if(huge(ii2).ne.hii2) print *,'fail'
if(hi2.ne.hii2) print *,'fail'
if(huge(i4).ne.hi4) print *,'fail'
if(huge(ii4).ne.hii4) print *,'fail'
if(hi4.ne.hii4) print *,'fail'
if(huge(i8).ne.hi8) print *,'fail'
if(huge(ii8).ne.hii8) print *,'fail'
if(hi8.ne.hii8) print *,'fail'

end subroutine
end
