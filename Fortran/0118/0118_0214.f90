implicit none
integer(8)::i
type TAG
  real*8 a(10000)
  real*8 :: b(10000) = 2.
end type
type(TAG) st
do concurrent(i=1:10000)
st%a(i) = st%b(i) + 3.
end do
print *,merge("OK","NG",all(st%a==5.0))
end
