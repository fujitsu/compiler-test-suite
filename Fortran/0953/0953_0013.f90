module m
type ty
    integer :: ii = 3
   end type

  type,extends(ty) :: tty
    integer :: jj = 5
  end type
  type(tty),target,save :: trg_tty
  integer,target::t1 =30
  integer,target,save :: trg(5) =[1,2,3,4,5]
  integer,target,save :: trg2(2,2) =reshape([1,2,3,4],[2,2])
  class(*),pointer::ptr(:)=>trg
  class(*),pointer::ptr2(:)=>trg(1:5:2)
  class(*),pointer::ptr3(:,:)=>trg2(1:2,1:2)
  integer::k =1
end module
use m
block
   class(*),pointer::ptr_ty=>trg_tty
   class(*),pointer::ptr_ty2=>t1
  select type(A=>ptr_ty)
    type is(tty)
       if(A%ii .ne. 3) print*,"121"
    type is(ty)
      print*,"222"
   class default
      print*,"122"
    end select
   select type(A=>ptr_ty2)
    type is(integer)
       if(A .ne.t1) print*,"221"
   class default
      print*,"922"
    end select
    k=0
        select type(A=>ptr(1))
          type is(integer)
           if (A/=1) print *,101
           k=1
          class default
             print *,"Default1"
        end select
        if (k/=1) print *,102
        k=0
        select type(A=>ptr(5))
          type is(integer)
           if (A/=5) print *,103
           k=1
          class default
             print *,"Default2"
        end select
        if (k/=1) print *,104
        k=0
        select type(A=>ptr2(3))
          type is(integer)
           if (A/=5) print *,105
           k=1
          class default
             print *,"Default3"
        end select
        if (k/=1) print *,106
        select type(A=>ptr3(2,2))
          type is(integer)
           if (A/=4) print *,107
           k=1
          class default
             print *,"Default3"
        end select
        if (k/=1) print *,108
  print*,"Pass"
end block
end

