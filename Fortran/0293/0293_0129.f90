type ty1
  integer i4
  real r4
end type

type(ty1) tty1

tty1%i4 = 0;
tty1%r4 = 0;
write(1, '(z8.8)') tty1%i4 
write(1, '(z8.8)') tty1%r4 
print *,'pass'
end

