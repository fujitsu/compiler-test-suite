program main
integer,dimension(1:50)::a
integer v,k,i,res
integer,parameter::ans=1

a = (/(i,i=1,50)/)

i = sum(minloc(a))
k = sum(a)
v = minval(a)

res = min(v,k,i)

if (res==ans) then
  print *,'ok'
else
  print *,'ng',res,ans
endif
end
