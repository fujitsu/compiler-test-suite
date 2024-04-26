integer :: a=3,b=4
outer: do i=1, 10
inner: do j=1, 10
if (i>a) exit outer
if (j>b) exit
end do inner
end do outer
print *,'pass'
end
