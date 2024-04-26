call test()
print *,'pass'
end
subroutine test()
integer :: i, m, n
integer,dimension(2) :: j
m = bit_size (i)
n = bit_size (j)
if (m.ne.32_4   )print *,'err'
if (n.ne.32_4   )print *,'err'
end
