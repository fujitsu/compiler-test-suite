 subroutine f1()
   real(kind=8) :: dval1
   real(kind=4) :: fval1
   dval1 = z'000fffffffffffff'
   write(11,*) dval1

   dval1 = 2.2250738585072009D-308
   write(11,*) dval1

   fval1 = z'007fffff'
   write(11,*) fval1

   fval1 = 1.17549421E-38
   write(11,*) fval1
 end subroutine f1

 subroutine f2()
   real(kind=8) :: dval2
   real(kind=4) :: fval2
   dval2 = z'0010000000000000'
   write(11,*)  dval2

   dval2 = 2.2250738585072014D-308
   write(11,*)  dval2

   fval2 = z'00800000'
   write(11,*)  fval2

   fval2 = 1.17549435E-38
   write(11,*)  fval2
 end subroutine f2

 program main
real(16) d
   call f1()
   call f2()
rewind 11
read(11,*) d;if (d==0)print *,101,d
read(11,*) d;if (d==0)print *,102,d
read(11,*) d;if (d==0)print *,103,d
read(11,*) d;if (d==0)print *,104,d
read(11,*) d;if (d==0)print *,105,d
read(11,*) d;if (d==0)print *,106,d
read(11,*) d;if (d==0)print *,107,d
read(11,*) d;if (d==0)print *,108,d
print *,'pass'
 end program main
