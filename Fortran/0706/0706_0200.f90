      call s1
      print *,'pass'
      end
subroutine s1
 interface
   subroutine ss2(fs,fa)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
   end subroutine
   subroutine ss3(fs,fa)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
   end subroutine
   subroutine ss4(fs,fa)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
   end subroutine
 end interface
call ss1
call ss2
call ss3
call ss4
call ss5
call ss6
call ss7
call ss8
end
subroutine ss8
character*1 a1,a2,a3
open (91,delim='quote')
write(91,*) achar(48),achar(49)
write(91,*) achar(65),achar(66),achar(67)
rewind 91
read (91,*) a1,a2
if (a1//a2/='01')print *,'fail'
read (91,*) a1,a2,a3
if (a1//a2//a3/='ABC')print *,'fail'
end subroutine ss8
subroutine ss7
 character(len=10),dimension(2,2) ::a,b,c
 character(len=10),dimension(2,2) ::b1,c1
 a='12345 '
open (81,delim='quote')
b=adjustl(a);write(81,*) b
c=adjustr(a);write(81,*) c
rewind 81
read (81,*) b1,c1
if (any(b1/='12345'))print *,'fail'
if (any(c1/='     12345'))print *,'fail'
call ss71(a,b,c,b1,c1)
 contains
   subroutine ss71(a,b,c,b1,c1)
 character(len=*),dimension(:,:) ::a,b,c
 character(len=*),dimension(:,:) ::b1,c1
open (82,delim='quote')
b=adjustl(a);write(82,*) b
c=adjustr(a);write(82,*) c
rewind 82
read (82,*) b1,c1
if (any(b1/='12345'))print *,'fail'
if (any(c1/='     12345'))print *,'fail'
call ss72(adjustl(a), adjustr(a))
end subroutine
   subroutine ss72(b1,c1)
 character(len=*) ,dimension(:,:)::b1,c1
if (any(b1/='12345'))print *,'fail'
if (any(c1/='     12345'))print *,'fail'
end subroutine
end
subroutine ss6
 character(len=10) ::a,b,c
 character(len=10) ::b1,c1
 a='12345 '
open (71,delim='quote')
b=adjustl(a);write(71,*) b
c=adjustr(a);write(71,*) c
rewind 71
read (71,*) b1,c1
if (b1/='12345')print *,'fail'
if (c1/='     12345')print *,'fail'
call ss61(a,b,c,b1,c1)
 contains
   subroutine ss61(a,b,c,b1,c1)
 character(len=*) ::a,b,c
 character(len=*) ::b1,c1
open (72,delim='quote')
b=adjustl(a);write(72,*) b
c=adjustr(a);write(72,*) c
rewind 72
read (72,*) b1,c1
if (b1/='12345')print *,'fail'
if (c1/='     12345')print *,'fail'
call ss62(adjustl(a), adjustr(a))
end subroutine
   subroutine ss62(b1,c1)
 character(len=*) ::b1,c1
if (b1/='12345')print *,'fail'
if (c1/='     12345')print *,'fail'
end subroutine
end
subroutine ss5
 character(len=1) ::a,b
 character(len=1) ::c,d
 a=char(67);b=char(68)
open (61,delim='quote')
write(61,*) a,b
rewind 61
read (61,*) c,d
if (c//d/='CD')print *,'fail'
end
subroutine ss4(fs,fa)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
 dimension a(2,2),b(2,2)
 character(len=10) ::a='12345abcde'
 character(len= 3) ::b='abc'
integer,dimension(2,2):: i,j,k,m
i=index(a,b,fa)
j=index(a,'abx',fa)
k=index('a pencil','pen',fs)
m=index('a eraser','a',.true.)
write(23,*)i,j,k,m
write(23,*) index(a,b,fa), index(a,'abx',fa), index('a pencil','pen',fs), index('a eraser','a',.true.)
rewind 23
read (23,*)i,j,k,m
if (any(i/=6))print *,'fail'
if (any(j/=0))print *,'fail'
if (any(k/=3))print *,'fail'
if (any(m/=5))print *,'fail'
read (23,*)i,j,k1,m1
if (any(i/=6))print *,'fail'
if (any(j/=0))print *,'fail'
if (   (k1/=3))print *,'fail'
if (   (m1/=5))print *,'fail'
call ss41(a,b,i,j,k,m,fa,fs)
 contains
    subroutine ss41(a,b,i,j,k,m,fa,fs)
 character(len=*) ::a(:,:)
 character(len=*) ::b(:,:)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
integer,dimension(:,:):: i,j,k,m
i=index(a,b,fa)
j=index(a,'abx',fa)
k=index('a pencil','pen',fs)
m=index('a eraser','a',.true.)
write(22,*)i,j,k,m
write(22,*) index(a,b,fa), index(a,'abx',fa), index('a pencil','pen',fs), index('a eraser','a',.true.)
rewind 22
read (22,*)i,j,k,m
if (any(i/=6))print *,'fail'
if (any(j/=0))print *,'fail'
if (any(k/=3))print *,'fail'
if (any(m/=5))print *,'fail'
read (22,*)i,j,k1,m1
if (any(i/=6))print *,'fail'
if (any(j/=0))print *,'fail'
if (   (k1/=3))print *,'fail'
if (   (m1/=5))print *,'fail'
call ss44(index(a,b,fa), index(a,'abx',fa),fa,fs)
    end subroutine
    subroutine ss44(i,j,fa,fs)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
integer,dimension(:,:):: i,j
if (any(i/=6))print *,'fail'
if (any(j/=0))print *,'fail'
    end subroutine
end
subroutine ss3(fs,fa)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
 character(len=10) ::a='12345abcde'
 character(len= 3) ::b='abc'
integer i,j,k,m
i=index(a,b,fs)
j=index(a,'abx',fs)
k=index('a pencil','pen',fs)
m=index('a eraser','a',.true.)
write(13,*)i,j,k,m
write(13,*) index(a,b,fs), index(a,'abx',fs), index('a pencil','pen',fs), index('a eraser','a',.true.)
rewind 13
read (13,*)i,j,k,m
if (any((/i,j,k,m/)/=(/6,0,3,5/)))print *,'fail'
read (13,*)i,j,k,m
if (any((/i,j,k,m/)/=(/6,0,3,5/)))print *,'fail'
call ss31(a,b,i,j,k,m,fa,fs)
 contains
    subroutine ss31(a,b,i,j,k,m,fa,fs)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
 character(len=*) ::a
 character(len=*) ::b
i=index(a,b,fs)
j=index(a,'abx',fs)
k=index('a pencil','pen',fs)
m=index('a eraser','a',.true.)
write(12,*)i,j,k,m
write(12,*) index(a,b,fs), index(a,'abx',fs), index('a pencil','pen',fs), index('a eraser','a',.true.)
rewind 12
read (12,*)i,j,k,m
if (any((/i,j,k,m/)/=(/6,0,3,5/)))print *,'fail'
read (12,*)i,j,k,m
if (any((/i,j,k,m/)/=(/6,0,3,5/)))print *,'fail'
    end subroutine
end
subroutine ss2(fs,fa)
   logical,optional::fs
   logical,optional,dimension(:,:)::fa
 character(len=10) ::a='12345abcde'
 character(len= 3) ::b='abc'
integer i,j,k,m
i=index(a,b,fs)
j=index(a,'abx',fs)
k=index('a pencil','pen',fs)
m=index('a eraser','a',.true.)
write(11,*)i,j,k,m
write(11,*) index(a,b,fs), index(a,'abx',fs), index('a pencil','pen',fs), index('a eraser','a',.true.)
rewind 11
read (11,*)i,j,k,m
if (any((/i,j,k,m/)/=(/6,0,3,5/)))print *,'fail'
read (11,*)i,j,k,m
if (any((/i,j,k,m/)/=(/6,0,3,5/)))print *,'fail'
end
subroutine ss1
 character(len=10) ::a
 integer :: i
 a='12345 '
 i=len_trim(a)
 write(1,*) i
 rewind 1
 read (1,*) j;if (j/=5)print *,'fail'
  call ss11(a)
  contains
   subroutine ss11(a)
    character(*) a
   if(len_trim(a)/=5)print *,'fail'
   call ss12(len_trim(a))
   end subroutine
   subroutine ss12(i)
   if(i/=5)print *,'fail'
   end subroutine
end
