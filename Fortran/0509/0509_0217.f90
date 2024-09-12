type z
  integer::z1
end type
type(z),target::r
 type t
  class(*), pointer :: p
 end type
  type(z) ,target        :: t3
 type(t)::v2=t(t3)
 type y
  class(z ), pointer :: p
 end type
 type(y)::v3=y(r )

select type(n=>v2%p)
 type is(z)
k=1
end select
if (k/=1) print *,101
k=0
select type(n=>v3%p)
 type is(z      )
k=1
end select
if (k/=1) print *,102
print *,'pass'
end
