type x
  integer:: x1
  integer,pointer:: x2
end type
integer,save,target:: t
type (x),parameter:: v1= x( 1, null()  )
type (x)          :: w1= x( 1, null()  )
type (x)          :: w2= x( 1, t       )
if (     associated( v1% x2 )) print *,101
if (     associated( w1% x2 )) print *,102
if (.not.associated( w2% x2 )) print *,104
if (.not.associated( w2% x2 , t)) print *,202
print *,'pass'
end
