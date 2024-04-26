logical :: l
l = blt(-1,1)
print *,'pass'
if (l.eqv..true.) print *,'err'
end
