type tt
 class(*),pointer::i
end type

integer::arr(10)
integer,target::tgt = 2
type(tt) :: obj

obj%i=>tgt

select type(aa=>obj%i)
 type is(integer)
 forall( aa=1:10)
  arr(aa) = aa
 end forall
 print*,arr
end select

end
