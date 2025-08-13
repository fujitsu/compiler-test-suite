module int2str_mod
  public int2str
contains
  function int2str(n) result(s)
    implicit none
    integer , intent(in) :: n
    character(len=2-max(sign(1,n),0)+max(max( &
        min(abs(n)/10**1,1)*1,min(abs(n)/10**2,1)*2,min(abs(n)/10**3,1)*3, &
        min(abs(n)/10**4,1)*4,min(abs(n)/10**5,1)*5,min(abs(n)/10**6,1)*6, &
        min(abs(n)/10**7,1)*7,min(abs(n)/10**8,1)*8),min(abs(n)/10**9,1)*9 &
        ))::s
    integer :: absn,j,k,is
    absn = abs(n)
    if ( absn == n ) is = 1
    if ( absn /= n ) is = 2
    if ( absn /= n ) s(1:1) = "-"
    do j=len(s),is,-1
       k = modulo(absn,10)+1
       s(j:j) = "0123456789"(k:k)
       absn = absn / 10
    end do
    return
  end function int2str
end module int2str_mod
use int2str_mod
do i=-10,10
 write(109,*)int2str(i)
end do
print *,'pass'
end
