call s1
print *,'pass'
contains
subroutine s1
real::a1(2),a2(2),a3(2),a4(2),a5(2),b(2)
b=1
do i=1,2
a1=b(i)**1
a2=b(i)**2
a3=b(i)**3
a4=b(i)**4
a5=b(i)**5
enddo
if(any(a1/=a2)) print *,'err1'
if(any(a3/=a4)) print *,'err2'
if(any(a1/=a5)) print *,'err3'
end subroutine s1
end
