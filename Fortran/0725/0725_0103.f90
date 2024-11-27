program main
integer,dimension(1:50)::a
integer v,k,i,res
integer,parameter::ans=1275

a = (/(i,i=1,50)/)

v = maxval(a)
k = sum(a)
i = sum(maxloc(a))

res = max(v,k,i)

if (res==ans) then
  print *,'ok'
else
  print *,'ng',res,ans
endif
end
