function fun()
implicit none
character*(*) fun,ent
save
fun = "ABC"
return 
entry    ent()
fun = "ABC"
 return 
end
