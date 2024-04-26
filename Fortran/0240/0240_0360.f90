call s()
print *,'pass'
end
subroutine s()
integer :: a,b
a=100
b=5
outer: do i=1, 10
inner: do j=1, 10
if (i>a) exit outer
if (j>b) exit
enddo inner
enddo outer
if (i.ne.11   )print *,'err1'
if (j.ne.6   )print *,'err2'
end
