type x
  integer:: x1
  integer,pointer:: x2
  integer:: x3
end type
integer,save,target:: t
type (x):: v= x( 1, t , 2)
if (.not.associated( v% x2 , t)) print *,101
print *,'pass'
end
