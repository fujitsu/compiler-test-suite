
character::arr1(1),arr2(2)
arr1=[character*1::'A']
arr2=[character*(1)::'A','B']
if(any (arr1 /=[character*1::'A'])) print*,"101"
if(any (arr2 /=[character*(1)::'A','B'])) print*,"102"

print*,"PASS"
end
