program main
integer,dimension(1:50)::a,b
integer v,k,i,res
integer,parameter::ans=1

a = (/(i,i=1,50)/)
b = (/(50-i+1,i=1,50)/)

v = minval(a)
k = dot_product(a,b)
i = sum(minloc(a))

res = min(v,k,i)

if (res==ans) then
  print *,'ok'
else
  print *,'ng',res,ans
endif
end
