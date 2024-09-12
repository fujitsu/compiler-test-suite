call aaaaa
call bbbbb
call ccccc
print *,'pass'
contains
subroutine aaaaa
character*4 a
a='abcd'
i=3
if(repeat(a(1:i),i).ne.repeat(a(1:i),3)) print *,'ng'
if(len(repeat(a(1:i),i)).ne.len(repeat(a(1:i),3))) print *,'ng'
if(repeat('abcd'(1:i),i).ne.repeat('abcd'(1:i),3)) print *,'ng'
if(len(repeat('abcd'(1:i),i)).ne.len(repeat('abcd'(1:i),3))) print *,'ng'
if(repeat(a(1:i),i)//'efg'.ne.repeat(a(1:i),3)//'efg') print *,'ng'
if(len(repeat(a(1:i),i)//'efg').ne.len(repeat(a(1:i),3)//'efg')) print *,'ng'
if(repeat('abcd'(1:i),i)//'efg'.ne.repeat('abcd'(1:i),3)//'efg') print *,'ng'
if(len(repeat('abcd'(1:i),i)//'efg').ne.len(repeat('abcd'(1:i),3)//'efg')) &
print *,'ng'
end subroutine aaaaa
subroutine bbbbb
character*999 ch0
character*1000 ch1
ch0=repeat('a',999) 
ch1=repeat('a',1000)
if(len(repeat(ch1,999)).ne.999000) print *,'ng'
if(len(repeat(ch1,1000)).ne.1000000) print *,'ng'
if(len(repeat(ch0,999)).ne.998001) print *,'ng'
if(len(repeat(ch0,1000)).ne.999000) print *,'ng'
end subroutine bbbbb
subroutine ccccc
character*70 a
character*70 b(2000)
j=10
a='12345678901234567890123456789012345678901234567890          '
b='12345678901234567890123456789012345678901234567890          '
do i=1,2000
if(repeat(a,999) .ne. repeat(b(i),999)) print *,'ng'
if(repeat(a(1:j),999) .ne. repeat(b(i)(1:j),999)) print *,'ng'
enddo
if(repeat('12345678901234567890'(1:j),1).ne.'1234567890') print *,'ng'
end subroutine ccccc
end
