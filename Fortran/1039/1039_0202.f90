 module m1
 type w
   integer,pointer :: m(:)
 end type
 type(w),pointer::z(:)
 contains
   subroutine ind_m1
    call x
    contains
    subroutine x
     implicit none
     integer :: k(4)
     if (size(k)/=z(3)%m(3))write(6,*) "NG"
    end subroutine
   end subroutine
 end module 
 module m2
 type w
   integer,pointer :: m(:)
 end type
 type(w),pointer::z(:)
 contains
   subroutine ind_m1
    call x
    contains
    subroutine x
     call ind_m2
   end subroutine
   subroutine ind_m2
     implicit none
     integer :: k(4)
     if (size(k)/=z(3)%m(3))write(6,*) "NG"
   end subroutine
   end subroutine
 end module 
 module m3
 type w
   integer,pointer :: m(:)
 end type
 type(w),pointer::z(:)
 contains
   subroutine ind_m1
    call x
    contains
   subroutine ind_m2
     implicit none
     integer :: k(4)
     if (size(k)/=z(3)%m(3))write(6,*) "NG"
   end subroutine 
    subroutine x
     call ind_m2
   end subroutine
  end subroutine
 end module 

subroutine s1
use m1
allocate(z(3))
allocate(z(3)%m(3))
z(3)%m(3)=4
call ind_m1
end
subroutine s2
use m2
allocate(z(3))
allocate(z(3)%m(3))
z(3)%m(3)=4
call ind_m1
end
subroutine s3
use m3
allocate(z(3))
allocate(z(3)%m(3))
z(3)%m(3)=4
call ind_m1
end
call s1
call s2
call s3
print *,'pass'
end
