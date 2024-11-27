function ifun03(i)
character(len=kind(i)) ifun03
intent(in) :: i
ifun03='1234567890'(1:i)
end function
character ib*4,ifun03*4
ib=ifun03(6)
if (ib/='1234') print *,'error'
print *,'pass'
end
