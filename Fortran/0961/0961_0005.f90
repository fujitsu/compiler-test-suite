integer::num(5)=1
call sub(num)

contains
subroutine sub(i)
class(*)::i(:)

integer::arr(10)

select type(aa=>i)
type is(integer)
 forall( aa=1:10,arr(aa)==0)
  arr(aa) = aa
 end forall
 print*,arr
end select
end subroutine

end
