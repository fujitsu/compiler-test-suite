module m0
  integer     ::k
 interface
 module subroutine s()
 end 
 module subroutine x()
 end 
 module subroutine ss1(i,ii,iii)
  character(k) :: i(k)
  character(k) :: ii(k+1)
  character(k) :: iii(k+2)
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
  character(k) :: j(k)
  character(k) :: jj(k+1)
  character(k) :: jjj(k+2)
   call ss1(j,jj,jjj)
   if (any(j/='1')) print *,201
   if (any(jj/='1')) print *,202
   if (any(jjj/='1')) print *,203
   if (size(j,1)/=1) print *,301
   if (size(jj,1)/=2) print *,302
   if (size(jjj,1)/=3) print *,303
   call x
 end 
  module subroutine ss1(i,ii,iii)
  character(k) :: i(k)
  character(k) :: ii(k+1)
  character(k) :: iii(k+2)
    i='1234'
    ii='1234'
    iii='1234'
if (k==2) then
   if (any(i/='12')) print *,1201
   if (any(ii/='12')) print *,1202
   if (any(iii/='12')) print *,1203
   if (size(i,1)/=2) print *,1301
   if (size(ii,1)/=3) print *,1302
   if (size(iii,1)/=4) print *,1303
else
   if (any(i/='1')) print *,2201
   if (any(ii/='1')) print *,2202
   if (any(iii/='1')) print *,2203
   if (size(i,1)/=1) print *,2301
   if (size(ii,1)/=2) print *,2302
   if (size(iii,1)/=3) print *,2303
endif
  end
  module subroutine x
   k=k+1
  end
end

use m0
k=1
call s
print *,'pass'
end
