character(kind = 1,len = 10)::cc1(5) = 'a,b,c,d,e'
call sub
contains
subroutine sub
Type ty(k1)
 Integer,kind  :: k1
 character(kind= k1,len = len(cc1)+k1) :: ch(len(cc1)-5) 
 character(kind= k1,len = 2+len(cc1)+k1) :: c(len(cc1)*5) 
 character(kind= k1,len = kind(cc1)+k1) :: ch1(len(cc1))
 character(kind= k1,len = kind(cc1)+2) :: c2(kind(cc1))
 character(kind= k1,len = len(cc1)+2) :: ch2(kind(cc1))
 integer(kind = k1) :: i(len(cc1))= (/(k,k=(kind(cc1)),len(cc1))/)
End type
Type(ty(1)) :: obj
if(len(obj%ch) .ne. 11) print*,"121"
if(len(obj%c) .ne. 13) print*,"122"
if(len(obj%ch1) .ne. 2) print*,"123"
if(len(obj%c2) .ne. 3) print*,"124"
if(len(obj%ch2) .ne. 12) print*,"125"
if(ubound(obj%ch,1) .ne. 5) print*,"126"
if(ubound(obj%c,1) .ne. 50) print*,"127"
if(ubound(obj%ch1,1) .ne. 10) print*,"128"
if(ubound(obj%ch2,1) .ne. 1) print*,"129"
if(ubound(obj%c2,1) .ne. 1) print*,"130"
print*,"Pass"
end subroutine
End

