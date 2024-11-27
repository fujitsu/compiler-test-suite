type tt
 integer::i
end type

integer::arr(10)
type(tt) :: obj

obj%i=0

associate(asc=>obj%i)
 forall( asc=1:10)
  arr(asc) = asc
 end forall
 print*,arr
end associate

end
