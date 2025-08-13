module m1
contains
subroutine sub_m(j,k)
integer k(2)
write(142,*)j,k
end subroutine
end
use m1
    interface
      subroutine sub_e2(j,k); integer k(2); end subroutine
    end interface
    interface gen
      subroutine sub_e3(j,k); integer k(2); end subroutine
    end interface
call sub_e1(1,(/1,1/))
call sub_e2(1,(/1,1/))
call sub_e3(1,(/1,1/))
call sub_i(1,(/1,1/))
call sub_m(1,(/1,1/))
rewind 142
read(142,*) j,k,m;if (any((/j,k,m/)/=1))write(6,*) "NG"
read(142,*) j,k,m;if (any((/j,k,m/)/=1))write(6,*) "NG"
read(142,*) j,k,m;if (any((/j,k,m/)/=1))write(6,*) "NG"
read(142,*) j,k,m;if (any((/j,k,m/)/=1))write(6,*) "NG"
read(142,*) j,k,m;if (any((/j,k,m/)/=1))write(6,*) "NG"
print *,'pass'
contains
subroutine sub_i(j,k)
integer k(2)
write(142,*)j,k
end subroutine
end
subroutine sub_e1(j,k)
integer k(2)
write(142,*)j,k
end subroutine
subroutine sub_e2(j,k)
integer k(2)
write(142,*)j,k
end subroutine
subroutine sub_e3(j,k)
integer k(2)
write(142,*)j,k
end subroutine
