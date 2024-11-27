integer::arr(5),ss=1000

forall(integer::kk=1:2)
 forall(integer::kk=1:5) arr(ss)=ss+kk
end forall
forall(kk=1:2)
 forall(integer::kk=1:5) arr(ss)=ss+kk
end forall
forall(integer::kk=1:2)
 forall(kk=1:5) arr(ss)=ss+kk
end forall


end

