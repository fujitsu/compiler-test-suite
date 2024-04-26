call test()
print *,'pass'
end
subroutine test()
integer k
k=0
jj=5
ii=5
outer: do i=1, 10
inner: do j=1, 10
if (i>ii) cycle outer
if (j>jj) cycle
k=k+1
end do inner
end do outer
if (k.ne.25   )print *,'err'
end
