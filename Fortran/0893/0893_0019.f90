program main
 type ty(k,l)
   integer,kind::k
   integer,len ::l
   integer(kind =k),dimension(k)::arr= (/(j,j=1,l)/)
 end type
end program
