intrinsic :: index
integer   :: i01, i02, i03, i04, i05

i01 = kind(index('tsxt', 'ext'))
i02 = kind(index('tsxt', 'ext', kind = 1))
i03 = kind(index('tsxt', 'ext', kind = 2))
i04 = kind(index('tsxt', 'ext', kind = 4))
i05 = kind(index('tsxt', 'ext', kind = 8))

if (i01.eq.i02) print *,'kind(index(kind=1)) = ', i02
if (i02.eq.i03) print *,'kind(index(kind=2)) = ', i03
if (i04.eq.i05) print *,'kind(index(kind=4)) = ', i04
if (i01.eq.i05) print *,'kind(index(kind=8)) = ', i05

print *,'pass'

end
