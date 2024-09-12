interface
complex(8) function f() bind(c)
end function
complex(4) function g() bind(c)
end function
complex(4) function g2() bind(c)
end function
complex(8) function f2() bind(c)
end function
end interface
complex(8) x,y
x=f()
if (abs(f()-(1,2))>0.0001)print *,101
if (abs(x-(1,2))>0.0001)print *,102
x=f2()
if (abs(f2()-(1,2))>0.0001)print *,201
if (abs(x-(1,2))>0.0001)print *,202
y=g()
if (abs(g()-(1,2))>0.0001)print *,301
if (abs(y-(1,2))>0.0001)print *,302
y=g2()
if (abs(g2()-(1,2))>0.0001)print *,401
if (abs(y-(1,2))>0.0001)print *,402
print *,'pass'
end
complex(8) function f() bind(c)
entry            f2() bind(c)
complex(8) f2
f=(1,2)
end function
complex(4) function g() bind(c)
entry            g2() bind(c)
complex(4) g2
g=(1,2)
end function
