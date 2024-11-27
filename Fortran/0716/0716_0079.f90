REAL (kind=4)  :: r4
REAL (kind=8)  :: r8
REAL (kind=16) :: r16

REAL (KIND=8)  :: XLON1, XLON2, XLON3

r4  = 4.0
r8  = 8.0
r16 = 16.0

XLON1 = real( 99999999999999999999999999999999999999.9999999999999999999999999999999999999999999999999, KIND = 8)
XLON2 = real(-99999999999999999999999999999999999999.9999999999999999999999999999999999999999999999999, KIND = 8)
XLON3 = real(                                      0.0                                                , KIND = 8)
XLON1 = FLOAT(NINT(100 * XLON1))
XLON2 = FLOAT(NINT(100 * XLON2))
XLON3 = FLOAT(NINT(100 * XLON3))

print *,FLOAT(NINT(r4))
print *,FLOAT(NINT(r8))
print *,FLOAT(NINT(r16))

print *,FLOAT(NINT(r4,  1))
print *,FLOAT(NINT(r8,  1))
print *,FLOAT(NINT(r16, 1))

print *,FLOAT(NINT(r4,  2))
print *,FLOAT(NINT(r8,  2))
print *,FLOAT(NINT(r16, 2))

print *,FLOAT(NINT(r4,  4))
print *,FLOAT(NINT(r8,  4))
print *,FLOAT(NINT(r16, 4))

print *,FLOAT(NINT(r4,  8))
print *,FLOAT(NINT(r8,  8))
print *,FLOAT(NINT(r16, 8))

print *,XLON1
print *,XLON2
print *,XLON3

end
