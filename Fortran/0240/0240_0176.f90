i = index('mississippi', 'si')
if (i /= 4) print *,'err'
i = index('mississippi', 'si', back=.true.)
if (i /= 7) print *,'err'
print *,'pass'
end
