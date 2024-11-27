program main
 type ty(k,l)
   integer,kind::k
   integer,len ::l
   integer(kind =k),dimension(k)::arr= (/(l,l=1,k)/)
 end type
end program
