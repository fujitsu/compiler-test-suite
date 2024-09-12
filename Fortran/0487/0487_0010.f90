integer,parameter::z4=4,z8=8,z16=16
integer,parameter::k=4,n=8,m=16
integer,parameter:: k1= kind(1_8 * 1.0_k)
integer,parameter:: n1= kind(1_8 * 1.0_n)
integer,parameter:: m1= kind(1_8 * 1.0_m)
integer,parameter:: k2= kind(1_8 ** 1.0_k)
integer,parameter:: n2= kind(1_8 ** 1.0_n)
integer,parameter:: m2= kind(1_8 ** 1.0_m)
if (k1/=z4) print *,301
if (k2/=z4) print *,302
if (n1/=z8) print *,311
if (n2/=z8) print *,312
if (m1/=z16) print *,321
if (m2/=z16) print *,322
call s1 ( 1_8 , 1.0_k , z4)
call s2 ( 1_8 , 1.0_n , z8)
call s3 ( 1_8 , 1.0_m, z16)
print *,'pass'
contains
subroutine s1 ( i , r ,nn)
integer,intent(in)::nn
integer(8)::i
real(4):: r
if ( kind( r*i)/=nn) print *,101
if ( kind( r**i)/=nn) print *,102
end subroutine
subroutine s2 ( i , r ,nn)
integer,intent(in)::nn
integer(8)::i
real(8):: r
if ( kind( r*i)/=nn) print *,111
if ( kind( r**i)/=nn) print *,112
end subroutine
subroutine s3 ( i , r ,nn)
integer,intent(in)::nn
integer(8)::i
real(16):: r
if ( kind( r*i)/=nn) print *,121
if ( kind( r**i)/=nn) print *,122
end subroutine
end
