integer::arr(5),aa=66

associate(aa2=>arr)
if(aa ==66)forall(integer::aa2=1:5) arr(aa2)=aa2
if(any(aa2 /= [1,2,3,4,5]))print*,102,aa2
end associate

print*,"PASS"


end

