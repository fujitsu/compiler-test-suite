real,parameter::a=sin(1.0)
write(1, *)a
write(1, *)sin(1.0)
write(1, '(z8.8)')a
write(1, '(z8.8)')sin(1.0)
print *,'pass'
end
