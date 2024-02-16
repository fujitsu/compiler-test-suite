complex(kind=4):: cmp(4)
cmp=(2,1)
if (any(abs(COS(cmp%im) - 0.540302336) > 0.0001)) print *,"ng"
print*,"pass"
end

