module m1
type ty(k)
     integer,kind::k
      integer :: a
end type

type tx(kk)
     integer,kind::kk
      type(ty(2)) :: obj
end type tx

end module m1

program main
    use m1
    type(tx(3)) :: obj1[*]  
end
