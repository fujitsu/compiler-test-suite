program main
real,dimension(1:1)::a,b,c,d
real,parameter::ans=14.0
real res
a = 1
b = 2
c = 3
d = 4
call sub(0.0)
if (res==ans) then
  print *,'ok'
else
  print *,'ng',res,ans
endif
contains
subroutine sub(p)
i   = int(p)+1
res = p
res = res + (a(i)*b(i) + c(i)*d(i))
end subroutine
end



