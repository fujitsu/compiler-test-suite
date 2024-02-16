subroutine sub(nn)
implicit none
integer(8)::i,nn
real(8)::array(nn)
do concurrent(i=1:nn)
array(i) = 0.0
array(i) = array(i) + 1
end do
print *,merge("OK", "NG", all(array == 1.))
end

subroutine sub2(nn)
implicit none
integer(8)::i,nn
real(8)::array(nn)
do i=1,nn
array(i) = 0.0
array(i) = array(i) + 1
end do
print *,merge("OK", "NG", all(array == 1.))
end

integer(8)::nn = 10
call sub(nn)
end

