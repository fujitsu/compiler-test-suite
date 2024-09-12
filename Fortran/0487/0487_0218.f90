character(*) function f()
f='a'
end
character(1) f
if (f()/='a') print *,101
print *,'pass'
end
