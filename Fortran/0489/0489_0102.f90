subroutine s1(a1,b1,c1,d1,e1,f1,k1)
implicit real(4) (a),real(8)(b), real(16)(c)
implicit complex(4) (d),complex(8)(e), complex(16)(f)
a1=a1**a1
a1=a1**b1
a1=k1**b1
a1=a1**k1
a1=k1**a1
b1=b1**a1
a1= 2.0 ** a1
b1= 2.0 ** b1
a1= 2.0 ** k1
a1= 10.0 ** a1
b1= 10.0 ** b1
a1= 10.0 ** k1
a1=abs(d1)
a1=c1
d1=f1
end
implicit real(4) (a),real(8)(b), real(16)(c)
implicit complex(4) (d),complex(8)(e), complex(16)(f)
a1=1
b1=1
c1=1
d1=1
e1=1
f1=1
k1=1
call       s1(a1,b1,c1,d1,e1,f1,k1)
print *,'pass'
end
