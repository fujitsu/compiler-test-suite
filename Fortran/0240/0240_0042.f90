integer(4) :: i, m, n
integer(4), dimension (2) :: j
m = bit_size (i)
n = bit_size (j)
print *,'pass'
if (kind(m).eq.4) then
if (m.ne.32) print *,'err'
if (n.ne.32) print *,'err'
endif
end
