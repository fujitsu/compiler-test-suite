module m0
  integer::k=2,m=1,j=-1
  integer,parameter::n=2
private
public:: ss1,n,ss2,ss3
 interface
 module subroutine ss1(i,c,ca)
  integer :: i(k+m+j+1,(k+m+j+1),(k+m+j+1))
  character(k+m+j+2) :: c 
  character(k+m+j+3) :: ca(k+m+j+4,k+m+j+4,k+m+j+4)
 end
 module subroutine ss2(i,c,ca)
  integer :: i(k+m+j+1,(k+m+j+1),(k+m+j+1))
  character(k+m+j+2) :: c 
  character(k+m+j+3) :: ca(k+m+j+4,k+m+j+4,k+m+j+4)
 end
 module subroutine ss3(i,c,ca)
  integer :: i(k+m+j+1,(k+m+j+1),(k+m+j+1))
  character(k+m+j+2) :: c 
  character(k+m+j+3) :: ca(k+m+j+4,k+m+j+4,k+m+j+4)
 end
 end interface
end
use m0
  integer :: i(n+1,n+1,n+1)
  character(n+2) :: c 
  character(n+3) :: ca(n+4,n+4,n+4)
call ss1(i,c,ca)
  if (   ( c/='12ab')) print *,7021
  do k3=1,size(i,3)
  do k2=1,size(i,2)
  if (any(i(:,k2,k3)/=[1,2,3])) print *,701
  end do
  end do
  do k3=1,size(ca,3)
  do k2=1,size(ca,2)
  if (any(ca(:,k2,k3)/= ['34abc','56abc','34abc','56abc','34abc','56abc'] &
                               )) print *,7031
  end do
  end do
i=0
c=''
ca=''
call ss2(i,c,ca)
  if (   ( c/='12ab')) print *,17021
  do k3=1,size(i,3)
  do k2=1,size(i,2)
  if (any(i(:,k2,k3)/=[1,2,3])) print *,3701
  end do
  end do
  do k3=1,size(ca,3)
  do k2=1,size(ca,2)
  if (any(ca(:,k2,k3)/= ['34abc','56abc','34abc','56abc','34abc','56abc'] &
                               )) print *,37031
  end do
  end do
i=0
c=''
ca=''
call ss3(i,c,ca)
  if (   ( c/='12ab')) print *,27021
  do k3=1,size(i,3)
  do k2=1,size(i,2)
  if (any(i(:,k2,k3)/=[1,2,3])) print *,4701
  end do
  end do
  do k3=1,size(ca,3)
  do k2=1,size(ca,2)
  if (any(ca(:,k2,k3)/= ['34abc','56abc','34abc','56abc','34abc','56abc'] &
                               )) print *,47031
  end do
  end do
print *,'pass'
end
submodule(m0) smod2
 contains
 module procedure ss2
  if (size(i(:,1,1))/=3 ) print *,201
  if (size(i(1,:,1))/=3 ) print *,201
  if (size(i(1,1,:))/=3 ) print *,201
  if (len (c )/=4 ) print *,2011
  if (len (ca)/=5 ) print *,202
  if (size(ca(:,1,1))/=6 ) print *,2031
  if (size(ca(1,:,1))/=6) print *,2032
  if (size(ca(1,1,:))/=6) print *,2033
   c='12ab'
  do k3=1,size(i,3)
  do k2=1,size(i,2)
  i(:,k2,k3)=[1,2,3]
  end do
  end do
  do k3=1,size(ca,3)
  do k2=1,size(ca,2)
   ca(:,k2,k3)=['34abc','56abc','34abc','56abc','34abc','56abc']
  end do
  end do
 end
 module procedure ss1
  if (size(i(:,1,1))/=3 ) print *,201
  if (size(i(1,:,1))/=3 ) print *,201
  if (size(i(1,1,:))/=3 ) print *,201
  if (len (c )/=4 ) print *,2011
  if (len (ca)/=5 ) print *,202
  if (size(ca(:,1,1))/=6 ) print *,2031
  if (size(ca(1,:,1))/=6) print *,2032
  if (size(ca(1,1,:))/=6) print *,2033
   c='12ab'
  do k3=1,size(i,3)
  do k2=1,size(i,2)
  i(:,k2,k3)=[1,2,3]
  end do
  end do
  do k3=1,size(ca,3)
  do k2=1,size(ca,2)
   ca(:,k2,k3)=['34abc','56abc','34abc','56abc','34abc','56abc']
  end do
  end do
 end
 module procedure ss3
  if (size(i(:,1,1))/=3 ) print *,201
  if (size(i(1,:,1))/=3 ) print *,201
  if (size(i(1,1,:))/=3 ) print *,201
  if (len (c )/=4 ) print *,2211
  if (len (ca)/=5 ) print *,222
  if (size(ca(:,1,1))/=6 ) print *,2031
  if (size(ca(1,:,1))/=6) print *,2032
  if (size(ca(1,1,:))/=6) print *,2033
   c='12ab'
  do k3=1,size(i,3)
  do k2=1,size(i,2)
  i(:,k2,k3)=[1,2,3]
  end do
  end do
  do k3=1,size(ca,3)
  do k2=1,size(ca,2)
   ca(:,k2,k3)=['34abc','56abc','34abc','56abc','34abc','56abc']
  end do
  end do
 end
 end

