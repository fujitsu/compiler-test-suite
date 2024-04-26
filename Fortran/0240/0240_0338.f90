logical :: l
l = btest(1,0)
if (l.eqv..false.) print *,'err'
l = btest(4,1)
if (l.eqv..true.) print *,'err'
l = btest(32,5)
if (l.eqv..false.) print *,'err'
print *,'pass'
end
