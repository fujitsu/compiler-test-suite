module m1
type ty(k)
     integer,kind::k
      integer :: a
end type

type tx
      type(ty(2)) :: obj
end type tx

end module m1

program main
    use m1
    type(tx) :: obj1[*]
end
