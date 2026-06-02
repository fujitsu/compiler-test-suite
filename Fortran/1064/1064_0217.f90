complex ::c
type x
  real::RE
  real::IM
end type
type (x):: d
 real:: sfun1,sfun2,sfun3
sfun1(c)=c%im
sfun2(d)=d%im
sfun3(c)=imag(c)
if (sfun1( (1,2) ) /= 2) print *,101, sfun1( (1,2) )
if (sfun2(x(1,2) ) /= 2) print *,102
if (sfun3( (1,2) ) /= 2) print *,103, sfun3( (1,2) )
print *,'pass'
end
