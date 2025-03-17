program main
ii = 0
call s(1,10,ii)
if (ii/=10) print *,'error'
print *,'pass'
end program main

subroutine s(i1,i2,ii)
integer(4),intent(in)::i1,i2
integer(4)::array(10)
integer(4)::brray(10)

array(i1:i2) = 0
brray(  :  ) = 1
array = array(i1:i2) + brray(i1:i2)
ii = sum(array(i1:i2))

end
