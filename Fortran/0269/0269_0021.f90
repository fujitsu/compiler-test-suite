         type ty
         integer :: acmp(6)
         integer,allocatable :: bcmp(:)
         end type
         call sub()
         contains
         subroutine sub()
         integer,parameter :: kind_value = 6
         integer,parameter :: ii(2) = [1,2]
         integer :: arr(2) = [integer::(ii+2,integer*8::ii=1,2)]
         integer :: crr(6) = [([(ii+jj,jj=5,6)],integer(kind=4)::ii=1,6,4),[ii(2),3]]
         type(ty) :: obj = ty([([(ii+jj,jj=5,6)],integer(kind=4)::ii=1,6,4),[ii(2),3]],NULL())
         if(any(arr .ne. [3,4])) print*,"121"
         if(any(crr .ne. [6,7,10,11,2,3])) print*,"122"
         crr = [([(ii+jj-2,jj=5,6)],integer(kind=kind_value-2)::ii=1,6,4),[ii(2),3]]
         if(any(crr .ne. [4,5,8,9,2,3])) print*,"123"
         if(any(obj%acmp .ne. [6,7,10,11,2,3])) print*,"124"
         obj = ty([([(ii+jj-2,jj=5,6)],integer(kind=kind_value-2)::ii=1,6,4),[ii(2),3]],[([(ii+jj,jj=7,8)],integer(kind=4)::ii=1,6,4),[ii(2),4]])
         if(any(obj%acmp .ne. [4,5,8,9,2,3])) print*,"125"
         if(any(obj%bcmp .ne. [8,9,12,13,2,4])) print*,"126"
         if(size([[(ii+2,integer(kind_value-2)::ii=1,2)],([(ii+jj-2,jj=5,6)],integer(kind=kind_value-2)::ii=1,6,4)]) .ne. 6) print*,"127"
         if(any([[(ii+2,integer(kind_value-2)::ii=1,2)],([(ii+jj-2,jj=5,6)],integer(kind=kind_value-2)::ii=1,6,4)] .ne. [3,4,4,5,8,9])) print*,"128"
        call s2([integer*8::[(ii+2,integer(kind_value-2)::ii=1,2)],([(ii+jj-2,jj=5,6)],integer(kind=kind_value-2)::ii=1,6,4)],[real*8::(ii+4,integer*8::ii=1,2)])
        end
         subroutine s2(d1,d2)
        integer*8 :: d1(:)
        real*8 :: d2(:)
        if(any(d1.ne. [3,4,4,5,8,9])) print*,"201"
        if(any(d2 .ne. [5,6])) print*,"202"
        if(sizeof(d2) .ne. 16) print*,"203"
        if(sizeof(d1) .ne. 48) print*,"204",sizeof(d1)
        print*,"Pass"
        end
        end

