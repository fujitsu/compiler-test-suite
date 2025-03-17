integer(kind=1)  :: i1  = 1, i1_2(8), i1_3(7), i1_4(6)
integer(kind=2)  :: i2  = 2, i2_2(8), i2_3(7), i2_4(6)
integer(kind=4)  :: i4  = 4, i4_2(8), i4_3(7), i4_4(6)
integer(kind=8)  :: i8  = 8, i8_2(8), i8_3(7), i8_4(6)

real(kind=4)     :: r4  = 4.0,  r4_2(8),  r4_3(7),  r4_4(6)
real(kind=8)     :: r8  = 8.0,  r8_2(8),  r8_3(7),  r8_4(6)
real(kind=16)    :: r16 = 16.0, r16_2(8), r16_3(7), r16_4(6)

complex(kind=4)  :: c4  = (4.0,4.0),   c4_2(8),  c4_3(7),  c4_4(6)
complex(kind=8)  :: c8  = (8.0,8.0),   c8_2(8),  c8_3(7),  c8_4(6)
complex(kind=16) :: c16 = (16.0,16.0), c16_2(8), c16_3(7), c16_4(6)

i1_2 = [integer(kind=1) :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]
i2_2 = [integer(kind=2) :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]
i4_2 = [integer(kind=4) :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]
i8_2 = [integer(kind=8) :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]

if (range(int(i1_2)).ne.range(int(i2_2))) print *,'fail'
if (range(int(i1_2)).ne.range(int(i4_2))) print *,'fail'
if (range(int(i1_2)).ne.range(int(i8_2))) print *,'fail'

r4_2  = [real(kind=4)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]
r8_2  = [real(kind=8)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]
r16_2 = [real(kind=16) :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]

if (range(real(r4_2)).ne.range(real(r8_2 ))) print *,'fail'
if (range(real(r4_2)).ne.range(real(r16_2))) print *,'fail'

c4_2  = [complex(kind=4)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]
c8_2  = [complex(kind=8)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]
c16_2 = [complex(kind=16) :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]

if (range(cmplx(c4_2)).ne.range(cmplx(c8_2 ))) print *,'fail'
if (range(cmplx(c4_2)).ne.range(cmplx(c16_2))) print *,'fail'

i1_3 = [integer(kind=1) :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]
i2_3 = [integer(kind=2) :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]
i4_3 = [integer(kind=4) :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]
i8_3 = [integer(kind=8) :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]

if (range(int(i1_3)).ne.range(int(i2_3))) print *,'fail'
if (range(int(i1_3)).ne.range(int(i4_3))) print *,'fail'
if (range(int(i1_3)).ne.range(int(i8_3))) print *,'fail'

r4_3  = [real(kind=4)  :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]
r8_3  = [real(kind=8)  :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]
r16_3 = [real(kind=16) :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]

if (range(real(r4_3)).ne.range(real(r8_3 ))) print *,'fail'
if (range(real(r4_3)).ne.range(real(r16_3))) print *,'fail'

c4_3  = [complex(kind=4)  :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]
c8_3  = [complex(kind=8)  :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]
c16_3 = [complex(kind=16) :: i1, (r4, r8, r16, n=1, 1), i2, i4, i8]

if (range(cmplx(c4_3)).ne.range(cmplx(c8_3 ))) print *,'fail'
if (range(cmplx(c4_3)).ne.range(cmplx(c16_3))) print *,'fail'

i1_3 = [integer(kind=1) :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]
i2_3 = [integer(kind=2) :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]
i4_3 = [integer(kind=4) :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]
i8_3 = [integer(kind=8) :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]

if (range(int(i1_3)).ne.range(int(i2_3))) print *,'fail'
if (range(int(i1_3)).ne.range(int(i4_3))) print *,'fail'
if (range(int(i1_3)).ne.range(int(i8_3))) print *,'fail'

r4_3  = [real(kind=4)  :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]
r8_3  = [real(kind=8)  :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]
r16_3 = [real(kind=16) :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]

if (range(real(r4_3)).ne.range(real(r8_3 ))) print *,'fail'
if (range(real(r4_3)).ne.range(real(r16_3))) print *,'fail'

c4_3  = [complex(kind=4)  :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]
c8_3  = [complex(kind=8)  :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]
c16_3 = [complex(kind=16) :: i1, (c4, c8, c16, n=1, 1), i2, i4, i8]

if (range(cmplx(c4_3)).ne.range(cmplx(c8_3 ))) print *,'fail'
if (range(cmplx(c4_3)).ne.range(cmplx(c16_3))) print *,'fail'

i1_3 = [integer(kind=1) :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]
i2_3 = [integer(kind=2) :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]
i4_3 = [integer(kind=4) :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]
i8_3 = [integer(kind=8) :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]

if (range(int(i1_3)).ne.range(int(i2_3))) print *,'fail'
if (range(int(i1_3)).ne.range(int(i4_3))) print *,'fail'
if (range(int(i1_3)).ne.range(int(i8_3))) print *,'fail'

r4_3  = [real(kind=4)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]
r8_3  = [real(kind=8)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]
r16_3 = [real(kind=16) :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]

if (range(real(r4_3)).ne.range(real(r8_3 ))) print *,'fail'
if (range(real(r4_3)).ne.range(real(r16_3))) print *,'fail'

c4_3  = [complex(kind=4)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]
c8_3  = [complex(kind=8)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]
c16_3 = [complex(kind=16) :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16]

if (range(cmplx(c4_3)).ne.range(cmplx(c8_3 ))) print *,'fail'
if (range(cmplx(c4_3)).ne.range(cmplx(c16_3))) print *,'fail'

i1_4 = [integer(kind=1) :: r4, (r4, r8, r16, n=1, 1), r8, r16]
i2_4 = [integer(kind=2) :: r4, (r4, r8, r16, n=1, 1), r8, r16]
i4_4 = [integer(kind=4) :: r4, (r4, r8, r16, n=1, 1), r8, r16]
i8_4 = [integer(kind=8) :: r4, (r4, r8, r16, n=1, 1), r8, r16]

if (range(int(i1_4)).ne.range(int(i2_4))) print *,'fail'
if (range(int(i1_4)).ne.range(int(i4_4))) print *,'fail'
if (range(int(i1_4)).ne.range(int(i8_4))) print *,'fail'

r4_4  = [real(kind=4)  :: r4, (r4, r8, r16, n=1, 1), r8, r16]
r8_4  = [real(kind=8)  :: r4, (r4, r8, r16, n=1, 1), r8, r16]
r16_4 = [real(kind=16) :: r4, (r4, r8, r16, n=1, 1), r8, r16]

if (range(real(r4_4)).ne.range(real(r8_4 ))) print *,'fail'
if (range(real(r4_4)).ne.range(real(r16_4))) print *,'fail'

c4_4  = [complex(kind=4)  :: r4, (r4, r8, r16, n=1, 1), r8, r16]
c8_4  = [complex(kind=8)  :: r4, (r4, r8, r16, n=1, 1), r8, r16]
c16_4 = [complex(kind=16) :: r4, (r4, r8, r16, n=1, 1), r8, r16]

if (range(cmplx(c4_4)).ne.range(cmplx(c8_4 ))) print *,'fail'
if (range(cmplx(c4_4)).ne.range(cmplx(c16_4))) print *,'fail'

i1_4 = [integer(kind=1) :: r4, (c4, c8, c16, n=1, 1), r8, r16]
i2_4 = [integer(kind=2) :: r4, (c4, c8, c16, n=1, 1), r8, r16]
i4_4 = [integer(kind=4) :: r4, (c4, c8, c16, n=1, 1), r8, r16]
i8_4 = [integer(kind=8) :: r4, (c4, c8, c16, n=1, 1), r8, r16]

if (range(int(i1_4)).ne.range(int(i2_4))) print *,'fail'
if (range(int(i1_4)).ne.range(int(i4_4))) print *,'fail'
if (range(int(i1_4)).ne.range(int(i8_4))) print *,'fail'

r4_4  = [real(kind=4)  :: r4, (c4, c8, c16, n=1, 1), r8, r16]
r8_4  = [real(kind=8)  :: r4, (c4, c8, c16, n=1, 1), r8, r16]
r16_4 = [real(kind=16) :: r4, (c4, c8, c16, n=1, 1), r8, r16]

if (range(real(r4_4)).ne.range(real(r8_4 ))) print *,'fail'
if (range(real(r4_4)).ne.range(real(r16_4))) print *,'fail'

c4_4  = [complex(kind=4)  :: r4, (c4, c8, c16, n=1, 1), r8, r16]
c8_4  = [complex(kind=8)  :: r4, (c4, c8, c16, n=1, 1), r8, r16]
c16_4 = [complex(kind=16) :: r4, (c4, c8, c16, n=1, 1), r8, r16]

if (range(cmplx(c4_4)).ne.range(cmplx(c8_4 ))) print *,'fail'
if (range(cmplx(c4_4)).ne.range(cmplx(c16_4))) print *,'fail'

i1_3 = [integer(kind=1) :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]
i2_3 = [integer(kind=2) :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]
i4_3 = [integer(kind=4) :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]
i8_3 = [integer(kind=8) :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]

if (range(int(i1_3)).ne.range(int(i2_3))) print *,'fail'
if (range(int(i1_3)).ne.range(int(i4_3))) print *,'fail'
if (range(int(i1_3)).ne.range(int(i8_3))) print *,'fail'

r4_3  = [real(kind=4)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]
r8_3  = [real(kind=8)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]
r16_3 = [real(kind=16) :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]

if (range(real(r4_3)).ne.range(real(r8_3 ))) print *,'fail'
if (range(real(r4_3)).ne.range(real(r16_3))) print *,'fail'

c4_3  = [complex(kind=4)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]
c8_3  = [complex(kind=8)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]
c16_3 = [complex(kind=16) :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16]

if (range(cmplx(c4_3)).ne.range(cmplx(c8_3 ))) print *,'fail'
if (range(cmplx(c4_3)).ne.range(cmplx(c16_3))) print *,'fail'

i1_4 = [integer(kind=1) :: c4, (r4, r8, r16, n=1, 1), c8, c16]
i2_4 = [integer(kind=2) :: c4, (r4, r8, r16, n=1, 1), c8, c16]
i4_4 = [integer(kind=4) :: c4, (r4, r8, r16, n=1, 1), c8, c16]
i8_4 = [integer(kind=8) :: c4, (r4, r8, r16, n=1, 1), c8, c16]

if (range(int(i1_4)).ne.range(int(i2_4))) print *,'fail'
if (range(int(i1_4)).ne.range(int(i4_4))) print *,'fail'
if (range(int(i1_4)).ne.range(int(i8_4))) print *,'fail'

r4_4  = [real(kind=4)  :: c4, (r4, r8, r16, n=1, 1), c8, c16]
r8_4  = [real(kind=8)  :: c4, (r4, r8, r16, n=1, 1), c8, c16]
r16_4 = [real(kind=16) :: c4, (r4, r8, r16, n=1, 1), c8, c16]

if (range(real(r4_4)).ne.range(real(r8_4 ))) print *,'fail'
if (range(real(r4_4)).ne.range(real(r16_4))) print *,'fail'

c4_4  = [complex(kind=4)  :: c4, (r4, r8, r16, n=1, 1), c8, c16]
c8_4  = [complex(kind=8)  :: c4, (r4, r8, r16, n=1, 1), c8, c16]
c16_4 = [complex(kind=16) :: c4, (r4, r8, r16, n=1, 1), c8, c16]

if (range(cmplx(c4_4)).ne.range(cmplx(c8_4 ))) print *,'fail'
if (range(cmplx(c4_4)).ne.range(cmplx(c16_4))) print *,'fail'

i1_4 = [integer(kind=1) :: c4, (c4, c8, c16, n=1, 1), c8, c16]
i2_4 = [integer(kind=2) :: c4, (c4, c8, c16, n=1, 1), c8, c16]
i4_4 = [integer(kind=4) :: c4, (c4, c8, c16, n=1, 1), c8, c16]
i8_4 = [integer(kind=8) :: c4, (c4, c8, c16, n=1, 1), c8, c16]

if (range(int(i1_4)).ne.range(int(i2_4))) print *,'fail'
if (range(int(i1_4)).ne.range(int(i4_4))) print *,'fail'
if (range(int(i1_4)).ne.range(int(i8_4))) print *,'fail'

r4_4  = [real(kind=4)  :: c4, (c4, c8, c16, n=1, 1), c8, c16]
r8_4  = [real(kind=8)  :: c4, (c4, c8, c16, n=1, 1), c8, c16]
r16_4 = [real(kind=16) :: c4, (c4, c8, c16, n=1, 1), c8, c16]

if (range(real(r4_4)).ne.range(real(r8_4 ))) print *,'fail'
if (range(real(r4_4)).ne.range(real(r16_4))) print *,'fail'

c4_4  = [complex(kind=4)  :: c4, (c4, c8, c16, n=1, 1), c8, c16]
c8_4  = [complex(kind=8)  :: c4, (c4, c8, c16, n=1, 1), c8, c16]
c16_4 = [complex(kind=16) :: c4, (c4, c8, c16, n=1, 1), c8, c16]

if (range(cmplx(c4_4)).ne.range(cmplx(c8_4 ))) print *,'fail'
if (range(cmplx(c4_4)).ne.range(cmplx(c16_4))) print *,'fail'

print *,'pass'

end
