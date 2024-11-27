integer::i(5)=1

integer::arr(10)

associate(aa=>i)
forall( aa=1:10,arr(aa)==0)
  arr(aa) = aa
end forall
print*,arr
end associate

end
