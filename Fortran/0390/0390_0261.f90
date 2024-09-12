module xxxf
  use iso_c_binding
  implicit none
contains





     recursive function mm(k) bind(c) result(r)
     integer(c_int) r 
integer::k
    type(c_funptr) :: fp
k=k+1
       r=1
       if (k>10) return 
 fp = c_funloc(mm)
   if (.not.c_associated(fp)) print *,201
       if (mm(k)/=1) print *,302
       fp = c_funloc(nn)
   if (.not.c_associated(fp)) print *,202
       if (nn(k)/=1) print *,1303
       return 
      entry nn(k) bind(c) result(r)
       r=1
k=k+1
       if (k>10) return 
       fp = c_funloc(mm)
   if (.not.c_associated(fp)) print *,201
       if (mm(k)/=1) print *,1302
       fp = c_funloc(nn)
   if (.not.c_associated(fp)) print *,202
       if (nn(k)/=1) print *,1303
     end function mm

end module xxxf
use xxxf
integer::k
k=0
if (mm(k)/=1) print *,'202'
if (nn(k)/=1) print *,'203'
print *,'pass'
end

