implicit none
integer(8)::i
type TAG
  real*8 a
  real*8 :: b = 2.
end type
type(TAG) st(10000)
do concurrent(i=1:10000)
st(i)%a = st(i)%b + 3.
end do
print *,merge("OK","NG",all(st%a==5.0))
end
