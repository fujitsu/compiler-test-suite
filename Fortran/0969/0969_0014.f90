real    (kind =  4) :: rr04_01
real    (kind =  8) :: rr08_01
real    (kind = 16) :: rr16_01
complex (kind =  4) :: cc04_01
complex (kind =  8) :: cc08_01
complex (kind = 16) :: cc16_01

rr04_01 =  4.0
rr08_01 =  8.0
rr16_01 = 16.0
cc04_01 = ( 4.0,  4.0)
cc08_01 = ( 8.0,  8.0)
cc16_01 = (16.0, 16.0)


print *,real(rr04_01)
print *,real(rr08_01)
print *,real(rr16_01)
print *,real(cc04_01)
print *,real(cc08_01)
print *,real(cc16_01)

print *,cmplx(rr04_01)
print *,cmplx(rr08_01)
print *,cmplx(rr16_01)
print *,cmplx(cc04_01)
print *,cmplx(cc08_01)
print *,cmplx(cc16_01)

end
