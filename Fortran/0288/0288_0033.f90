call test()
print *,'pass'
end
subroutine test()
common /com/ a,b,c
integer :: a, b, c
if (a.ne.1   )print *,'err'
if (b.ne.2   )print *,'err'
if (c.ne.3   )print *,'err'
end
block data
common /com/ a,b,c
integer :: a=1, b=2, c=3
end block data
