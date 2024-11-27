program main
integer,dimension(1:50)::a,b
integer v,k,i,res
integer,parameter::ans=22100

a = (/(i,i=1,50)/)
b = (/(50-i+1,i=1,50)/)

i = sum(maxloc(a))
k = dot_product(a,b)
v = maxval(a)

res = max(v,k,i)

if (res==ans) then
  print *,'ok'
else
  print *,'ng',res,ans
endif
end
