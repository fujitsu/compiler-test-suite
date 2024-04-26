double precision :: dub
dub = dprod (3.e2, 4.4e4)

if (dub.eq.86) print *,'err'
print *,'pass'
end
