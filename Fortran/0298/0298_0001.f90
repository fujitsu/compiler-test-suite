program main
  implicit none

  integer:: mx,my,mz,mxyz,nit
  real(kind=8),allocatable:: a(:),b(:,:)
  integer,allocatable:: idx(:)
  integer:: it,p

  call init(mx, my, mz, nit)
  mxyz = 8*mx*my*mz
  allocate(a(mxyz),b(mxyz,nit),idx(mxyz))

  do it=1,nit
     do p=1,mxyz
        b(p,it)=p
     end do
  end do
  do p=1,mxyz
     idx(p)=p
  end do
	
  call dummy

  do it=1,nit
     do p=1,mxyz
        a(idx(p)) = b(p,it)
     end do
  end do

  print *,a(mxyz)
end program main

subroutine dummy
end	

subroutine init(mx, my, mz, nit)
mx=10
my=10
mz=10
nit=10
end







