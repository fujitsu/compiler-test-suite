interface
complex function f() bind(c)
end function
complex function f2() bind(c)
end function
end interface
complex x
x=f()
if (abs(f()-(1,2))>0.0001)print *,101
if (abs(x-(1,2))>0.0001)print *,102
x=f2()
if (abs(f2()-(1,2))>0.0001)print *,201
if (abs(x-(1,2))>0.0001)print *,202
print *,'pass'
end
complex function f() bind(c)
entry            f2() bind(c)
complex f2
f=(1,2)
end function
