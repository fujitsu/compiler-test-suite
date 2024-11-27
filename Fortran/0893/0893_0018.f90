program main
  type ty0(k)
    integer,kind::k
    integer::ii
  end type
  TYPE ty(k,l)
   integer,kind::k
   integer,len ::l
   INTEGER(KIND=4)::var(1)=[integer::l]
  END TYPE
end program
