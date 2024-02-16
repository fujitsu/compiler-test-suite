module m0
  integer::k=2,m=1,j=-1
  integer,parameter::n=2
private
public:: ss1,n,ss2,ss3
 interface
 module subroutine ss1(i,c,ca)
  integer :: i(k+m+j+1)
  character(k+m+j+2) :: c 
  character(k+m+j+3) :: ca(k+m+j+4)
 end
 module subroutine ss2(i,c,ca)
  integer :: i(k+m+j+1)
  character(k+m+j+2) :: c 
  character(k+m+j+3) :: ca(k+m+j+4)
 end
 module subroutine ss3(i,c,ca)
  integer :: i(k+m+j+1)
  character(k+m+j+2) :: c 
  character(k+m+j+3) :: ca(k+m+j+4)
 end
 end interface
end
use m0
  integer :: i(n+1)
  character(n+2) :: c 
  character(n+3) :: ca(n+4)
call ss1(i,c,ca)
  if (any(i/=[1,2,3])) print *,701
  if (   ( c/='12ab')) print *,7021
  if (any(ca/= ['34abc','56abc','34abc','56abc','34abc','56abc'] &
                               )) print *,7031
i=0
c=''
ca=''
call ss2(i,c,ca)
  if (any(i/=[1,2,3])) print *,1701
  if (   ( c/='12ab')) print *,17021
  if (any(ca/= ['34abc','56abc','34abc','56abc','34abc','56abc'] &
                               )) print *,17031
i=0
c=''
ca=''
call ss3(i,c,ca)
  if (any(i/=[1,2,3])) print *,2701
  if (   ( c/='12ab')) print *,27021
  if (any(ca/= ['34abc','56abc','34abc','56abc','34abc','56abc'] &
                               )) print *,27031
print *,'pass'
end
submodule(m0) smod2
 contains
 module procedure ss2
  if (size(i)/=3 ) print *,201
  if (len (c )/=4 ) print *,2011
  if (len (ca)/=5 ) print *,202
  if (size(ca)/=6 ) print *,203
  i=[1,2,3]
   c='12ab'
   ca=['34abc','56abc','34abc','56abc','34abc','56abc']
 end
 end
submodule(m0) smod
 contains
 module procedure ss1
  if (size(i)/=3 ) print *,201
  if (len (c )/=4 ) print *,2011
  if (len (ca)/=5 ) print *,202
  if (size(ca)/=6 ) print *,203
  i=[1,2,3]
   c='12ab'
   ca=['34abc','56abc','34abc','56abc','34abc','56abc']
 end
 end
submodule(m0) smod3
 contains
 module procedure ss3
  if (size(i)/=3 ) print *,221
  if (len (c )/=4 ) print *,2211
  if (len (ca)/=5 ) print *,222
  if (size(ca)/=6 ) print *,223
  i=[1,2,3]
   c='12ab'
   ca=['34abc','56abc','34abc','56abc','34abc','56abc']
 end
 end

