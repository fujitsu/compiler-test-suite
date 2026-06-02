character(1,4)::ch1,ch2
ch1=4_"a"
ch2=4_"b"
print *,'pass'
end
subroutine fun
integer(2),dimension(26)::i2
integer(8),dimension(26)::i8
i2=(/(i,i=97,122)/)
i8=(/(j,j=97,122)/)
call ss(char(i2,4),achar(i8,4))
call f0
contains
subroutine ss(a,b)
character(*,4),dimension(:)::a,b
if(any(a/=b)) print *,'fail'
call ss1(a//b)
end subroutine
subroutine ss1(a)
character(*,4),dimension(:)::a
do k=97,122
if((char(k,4)//achar(k,4))/=a(k-96)) print *,'fail'
end do
end subroutine
subroutine f0
character(10,4) a
a=4_' abc      '
call sub(a)
end subroutine
subroutine sub(x)
character(*,4) x
if(index(x,4_'b').ne.3) print *,'fail' 
if(adjustl(x).ne.4_'abc       ') print *,'fail' 
if(adjustl(4_' ab').ne.4_'ab ') print *,'fail'  
if(adjustr(x).ne.4_'       abc') print *,'fail' 
if(trim(adjustl(x)).ne.4_'abc') print *,'fail'  
if(len(adjustr(x)).ne.10) print *,'fail'       
call sub1(a1=index(x,4_'b'),a2=adjustl(x),a3=adjustl(4_' ab'),&
a4=adjustr(x),a5=trim(adjustl(x)),a6=len(adjustr(x)))
end subroutine
subroutine sub1(a1,a2,a3,a4,a5,a6)
integer,intent(in),optional::a1,a6
character(*,4),intent(in),optional::a2,a3,a4,a5
if(achar((a1+a6)*5).ne.char((a1+a6)*5)) print *,'fail'
if(achar((a1+a6)*5,4).ne.4_'A') print *,'fail'
if(achar(((a1+a6)*7)+6,4).ne.4_'a') print *,'fail'
if(len_trim(a2).ne.3) print *,'fail'
if(len_trim(a3).ne.2) print *,'fail'
if(len_trim(a4).ne.10) print *,'fail'
if(len_trim(a5).ne.3) print *,'fail'
if(len_trim(trim(a2)//trim(a3)// &
trim(adjustl(a4))//trim(a5)).ne.11) print *,'fail'
if(trim(trim(a2)//trim(a3)//&
trim(adjustl(a4))//trim(a5)).ne.4_'abcababcabc') print *,'fail'
if(len(repeat(trim(a2)//trim(a3)//&
trim(adjustl(a4))//trim(a5),2)).ne.22) print *,'fail'
end subroutine
end
subroutine f1(a,b)
character(*,4)::a,b
if(a/=b) print *,'fail'
end
subroutine f2(a)
character(*,4)::a
if(a/=4_"ab") print *,'fail'
end
