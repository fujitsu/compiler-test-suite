n=2
associate(r=>(/n/))
block
integer :: c(len ([character*(r(1)):: '1234'(r(1):3)]))
integer :: d(size([character*(r(1)):: '1234'(r(1):3)]))
if (size(c)/=2) print *,1001
if (size(d)/=1) print *,1002
end block
end associate

print *,'pass'
end

