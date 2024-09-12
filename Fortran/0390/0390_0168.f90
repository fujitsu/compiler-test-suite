subroutine s1
type typ1
integer::i0
end type typ1
type, extends(typ1) :: type2
end type type2
class(typ1), pointer :: type1
allocate(type1)
select type ( aaa => type1 )
class default
select type ( aaa => type1 )
class is ( typ1 )
select type ( type1 )
class is ( typ1 )
select type ( type1 )
class default
end select
end select
end select
end select
end
call s1
print *,'pass'
end
