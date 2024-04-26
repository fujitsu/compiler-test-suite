complex,parameter:: a=(1.0,2.0)
complex:: c
data c%re /a%re/
data c%im /a%im/
if (c.ne.(1.0,2.0)) print *,'err'
print *,'pass'
end
