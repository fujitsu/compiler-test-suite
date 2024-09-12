integer function f() result(x)
x=1.2345
if (x/=1)print *,102
end
integer f
if (f()/=1)print *,101
print *,'pass'
end
