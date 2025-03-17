module m1
type ce
  real(8)::q_r(5)
end type
contains
  subroutine mu(lim,j2,j30)
    type(ce),pointer,dimension(:,:,:) :: f
    interface 
      pure function lim(r)
        real(8),dimension(:),intent(in):: r
        real(8),dimension(size(r))     :: lim
      end function lim
    end interface
    real(8),dimension(5) :: qc,dq_m,r
    real(8) :: dx_c
    integer, dimension(3) :: isrt,iend,idelta
    integer :: i,j,k,im,jm,km
r=(/1,2,3,4,5/)
qc=(/11.,12.,13.,14.,15./)
dx_c=2.
dq_m=3.
isrt=j2;iend=j30;idelta=1
allocate(f(50,50,50))
    do k = isrt(3),iend(3)
      do j = isrt(2),iend(2)
        do i = isrt(1),iend(1)

          im = i - idelta(1)
          jm = j - idelta(2)
          km = k - idelta(3)

          f(im,jm,km)%q_r = qc - dx_c * lim(r) * dq_m
       enddo
     end do
   end do
if (any(abs(f(1:2,1:2,1:2)%q_r(1)-5.)>0.001))write(6,*) "NG"
if (any(abs(f(1:2,1:2,1:2)%q_r(2)-0.)>0.001))write(6,*) "NG"
if (any(abs(f(1:2,1:2,1:2)%q_r(3)+5.)>0.001))write(6,*) "NG"
if (any(abs(f(1:2,1:2,1:2)%q_r(4)+10.)>0.001))write(6,*) "NG"
if (any(abs(f(1:2,1:2,1:2)%q_r(5)+15.)>0.001))write(6,*) "NG"
end subroutine
end
module m2
contains
    pure function lim(r)
        real(8),dimension(:),intent(in):: r
        real(8),dimension(size(r))     :: lim
        lim=r
    end function lim
end
use m1
use m2
call mu(lim,2,50)
print *,'pass'
end
