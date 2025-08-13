CHARACTER       CINPUT*80,CLINE*50000
CLINE(1:1)='a'
CLINE(50000:50000)='z'
write(114,'(2a)') CLINE(1:1),CLINE(50000:50000)
call sub(CLINE(1:1),CLINE(50000:50000),CLINE)
rewind 114
read(114,'(a)') CLINE(1:2)
if (CLINE(1:2)/='az')write(6,*) "NG"
if (CLINE(1:1)/='a')write(6,*) "NG"
if (CLINE(50000:50000)/='z')write(6,*) "NG"
print *,'pass'
end
subroutine sub(a,b,c)
character*(*) a,b,c
if (len(a)/=1)write(6,*) "NG"
if (len(b)/=1)write(6,*) "NG"
if (len(c)/=50000)write(6,*) "NG"
if (a/='a')write(6,*) "NG"
if (b/='z')write(6,*) "NG"
end
