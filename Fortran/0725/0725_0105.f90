program main
integer,dimension(1:50):: a,b
integer p,k,res
integer,parameter::ans=193331200

a = (/(mod(i,4)+1,i=1,50)/)
b = (/(mod(i,3)+1,i=1,50)/)

p = product(b)
k = sum(a)

res = max(p,k)

if (res==ans) then
  print *,'ok'
else
  print *,'ng',res,ans
endif
end
