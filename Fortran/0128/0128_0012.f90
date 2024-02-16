program main
real,dimension(1:1)::a,b,c,d
integer,parameter::ANS=14
real res
a = 1
b = 2
c = 3
d = 4
res = 0
call sub(0.0)
if (int(res)==ANS) then
  print *,'ok'
else
  print *,'ng',res
endif
contains
subroutine sub(p)
i   = int(p)+1
res = res + (a(i)*b(i) + c(i)*d(i))
end subroutine
end



