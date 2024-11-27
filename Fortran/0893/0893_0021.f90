program main
 type ty(k,l)
   integer,kind::k
   integer,len ::l
   integer(kind =k),dimension(k+k)::arr= (/(j**2+k,j=1,l+k+1)/)
 end type
end program
