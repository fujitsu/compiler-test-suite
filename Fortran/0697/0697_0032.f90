call s1
call s2
call s3
print *,'pass'
contains
subroutine s1
integer,parameter::i=1
integer,parameter::i0=sizeof(1_"")
integer,parameter::i1=sizeof(1_"a"(1:1))
integer,parameter::i2=sizeof(1_"ab"(1:2))
integer,parameter::i3=sizeof(i_" "(1:1))
integer,parameter::i4=sizeof(i_" "(1:0))
integer,parameter::i5=sizeof(i_"abcde"(1:-1))

if(i0/=sizeof(1_"")) print *,'err1'
if(i1/=sizeof(1_"a"(1:1))) print *,'err2'
if(i2/=sizeof(1_"ab"(1:2))) print *,'err3'
if(i3/=sizeof(i_" "(1:1))) print *,'err4'
if(i4/=sizeof(i_" "(1:0))) print *,'err5'
if(i5/=sizeof(i_" "(1:-1))) print *,'err6'
end subroutine
subroutine s2
integer,parameter::i=1
integer,parameter::i0=sizeof((/1_"",1_""/))
integer,parameter::i1=sizeof((/1_"a"(1:1),1_"a"(1:1)/))
integer,parameter::i2=sizeof((/1_"ab"(1:2),1_"ab"(1:2)/))
integer,parameter::i3=sizeof((/i_" "(1:1),i_" "(1:1)/))
integer,parameter::i4=sizeof((/i_" "(1:0),i_" "(1:0)/))
integer,parameter::i5=sizeof((/i_"abcde"(1:-1),i_"abcde"(1:-1)/))
if(i0/=sizeof((/1_"",1_""/))) print *,'err1'
if(i1/=sizeof((/1_"a"(1:1),1_"a"(1:1)/))) print *,'err2'
if(i2/=sizeof((/1_"ab"(1:2),1_"ab"(1:2)/))) print *,'err3'
if(i3/=sizeof((/i_" "(1:1),i_" "(1:1)/))) print *,'err4'
if(i4/=sizeof((/i_" "(1:0),i_" "(1:0)/))) print *,'err5'
if(i5/=sizeof((/i_"abcde"(1:-1),i_"abcde"(1:-1)/))) print *,'err6'
end subroutine

subroutine s3
integer,parameter::ii=sizeof((/"",""/))
integer,parameter::iii=sizeof((/"abc","cde"/))
integer,parameter::iij=sizeof((/"abc","cd"/))
integer,parameter::iz=sizeof((/1_1,2_1,3_1,4_1/))
integer,parameter::iy=sizeof((/(m,m=1,100)/))

if(iy/=sizeof((/(m,m=1,100)/))) print *,'err11'
if(iz/=sizeof((/1_1,2_1,3_1,4_1/))) print *,'err12'
if(ii/=sizeof((/"",""/))) print *,'err13'
if(iii/=sizeof((/"abc","cde"/))) print *,'err14'
if(iij/=sizeof((/"abc","cd"/))) print *,'err15'
end subroutine
end
