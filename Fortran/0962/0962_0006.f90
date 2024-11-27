integer::i=1,j=2

integer::arr(10)

associate(aa=>i+j)
 forall( aa=1:10,arr(aa)==0)
  arr(aa) = aa
 end forall
 print*,arr
end associate

end
