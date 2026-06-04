function c1() 
implicit complex(C)
entry c2()
entry c3()
c2%re=1
c3%im=2
end
implicit complex(C)
cx=c1()
if (cx%re/=1 .or. cx%im/=2) print *,101,cx
cx=c2()
if (cx%re/=1 .or. cx%im/=2) print *,102,cx
cx=c3()
if (cx%re/=1 .or. cx%im/=2) print *,103,cx
print *,'pass'
end
