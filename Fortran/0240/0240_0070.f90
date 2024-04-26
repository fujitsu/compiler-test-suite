ii=1
jj=1
outer: do i=1, 10
inner: do j=1, 10
if (i>ii) cycle outer
if (j>jj) cycle
end do inner
end do outer

print *,'pass'
end
