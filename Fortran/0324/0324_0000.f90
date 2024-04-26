 recursive function   test06(i) result(tia)
 tia=1 
 return
 entry f_ent1(i) result(ia)
 entry f_ent2(i,j) result(ia)
 entry f_ent3(i,j,k) result(ia)
 ii=i
 jj=j
 kk=k
 call = f_ent1(1)
 call = f_ent2(1,1)
 call = f_ent3(1,1,1)
 call = test06(1)
 end function  
print *,'pass'
end 
