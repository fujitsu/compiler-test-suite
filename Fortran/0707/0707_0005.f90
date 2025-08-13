 call s1
 print *,'pass'
 end
module m
 interface ss
   module procedure sss,ssa
 end interface
 integer::i=2
 contains
 recursive function   sss(s) result(r)
 character*(*)::s
 character*(i*2)::r
 r=s
 end function
 recursive function   ssa(s) result(r)
 character*(*)::s(:)
 character*(i*2),pointer::r(:)
 allocate(r(size(s)))
 r=s
 end function
 end
 recursive subroutine s1
 use m
 call ss1
 call ss2
 call ss3
 contains
 recursive subroutine ss1
 character(i)::rs
 character(i)::ra(i)
 rs='1';ra='2'
 write(81)
 write(81,*,err=1)rs//rs
 print *,'fail'
1 continue
 write(81,*,err=2)ra//ra
 print *,'fail'
2 continue
 end subroutine
 recursive subroutine ss2
 character(i)::rs
 character(i)::ra(i)
 rs='1';ra='2'
 write(82)
 write(82,*,err=1)(/rs//rs/)
 print *,'fail'
1 continue
 write(82,*,err=2)(/ra//ra/)
 print *,'fail'
2 continue
 end subroutine
 recursive subroutine ss3
 character(i)::rs
 character(i)::ra(i)
 rs='1';ra='2'
 write(83)
 write(83,*,err=1)ss(rs//rs)
 print *,'fail'
1 continue
 write(83,*,err=2)ss(ra//ra)
 print *,'fail'
2 continue
 end subroutine
 end
