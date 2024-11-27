module m1
 type x
   integer(1)::x1
   integer(2)::x2
   integer(4)::x3
   integer(8)::x4
   real(4)::x5
   real(8)::x6
   real(16)::x7
   complex(4)::x8
   complex(8)::x9
   complex(16)::xa
   logical(1)::xb
   logical(2)::xc
   logical(4)::xd
   logical(8)::xe
   character(65001)::xf
   integer::z=2
 end type
   character(650010)::xf
contains
subroutine ss1
 type(x),pointer:: p1
 allocate( p1 )
call chk( p1 )
 end subroutine
subroutine chk(xx)
type(x)::xx
character,parameter::h=''
if (xx%x1 /= 0) print *,101 
if (xx%x2 /= 0) print *,102 
if (xx%x3 /= 0) print *,103 
if (xx%x4 /= 0) print *,104 
if (xx%x5 /= 0) print *,105 
if (xx%x6 /= 0) print *,106 
if (xx%x7 /= 0) print *,107 
if (xx%x8 /= 0) print *,108 
if (xx%x9 /= 0) print *,109 
if (xx%xa /= 0) print *,110 
if (xx%xb     ) print *,111 
if (xx%xc     ) print *,112 
if (xx%xd     ) print *,113 
if (xx%xe     ) print *,114 
if (xx%xe     ) print *,115 
do k=1,len(xx%xf)
if (xx%xf(k:k) /= h ) print *,116 
end do
if (xx%z  /= 2) print *,117 
end subroutine
end
use m1
call ss1
print *,'pass'
end



