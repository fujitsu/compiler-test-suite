interface
function x(c1,p,i8,c2)
character*5 x
character*2 c1
character(*),pointer::p(:)
integer(8)::i8
character*4 c2
end function
end interface
character(3),pointer::p(:)
if (x('ab',p,5_8,'1234')/='12345')write(6,*) "NG"
print *,'pass'
end
subroutine x(i1,i2,ii1,ii2,ii3,ii4,len1,len2,len3)
implicit integer(8)(i)
integer*2 ii1
integer*4 ii4
character(5)::p1
pointer(base,p1)
ip1=loc(i1)
ip2=loc(i2)
ipi1=loc(ii1)
ipi2=loc(ii2)
ipi3=loc(ii3)
ipi4=loc(ii4)
ipl1=loc(len1)
ipl2=loc(len2)
ipl3=loc(len3)
k=1
write(k,'(1h ,z16.16)')ip1
write(k,'(1h ,z16.16)')ip2
write(k,'(1h ,z16.16,1x,z4.4)')ipi1,ii1
write(k,'(1h ,z16.16)')ipi2
write(k,'(1h ,z16.16,1x,z16.16)')ipi3,ii3
write(k,'(1h ,z16.16,1x,z8.8)')ipi4,ii4
write(k,'(1h ,z16.16)')ipl1
write(k,'(1h ,z16.16)')ipl2
write(k,'(1h ,z16.16)')ipl3
base=loc(i1)
p1='12345'
end subroutine
character function p()
p='1'
end function
