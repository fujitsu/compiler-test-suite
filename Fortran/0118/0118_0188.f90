implicit none
integer(8)::i
do concurrent(i=1:10)
print *,"Hello"
end do
end
