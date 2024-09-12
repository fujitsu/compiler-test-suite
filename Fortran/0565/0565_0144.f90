module m1
        type x1
        integer,allocatable ::a(:)
        end type
        type,extends(x1):: x2
        integer,allocatable::b(:)
        class(*),allocatable :: cmp
        end type

        type ty
          class(*),allocatable::pp(:)
        end type

        type(ty) :: obj
      end

       use m1
       integer :: st = 0
       real :: ii = 2.0
       allocate(obj%pp,source=[x2([(k,k=1,20)],[(k,k=1,30)],ii),x2([(k,k=1,40)],[(k,k=1,50)],ii+2)],STAT=st)
       if(st /= 0 ) print*,"121"
       call sub(1,2,3,4)

       select type (xx=>obj%pp)
       type is(x2)
       if (any(xx(1)%b/=[(k,k=1,30)])) print *,"ng.." 
       if (any(xx(2)%b/=[(k,k=1,50)])) print *,"ng1.." 
        select type (yy=>xx(2)%cmp)
         type is(real)
          if (yy /= 4) print *,"ng2..",yy 
         class default
         print*,"122"
        end select
       class default
         print*,"121"
       end select
         print*,"Pass"
       end

    subroutine sub(k1,k2,k3,k4)
    integer a1(4)
    a1(k1)=1
    a1(k2)=1
    a1(k3)=1
    a1(k4)=1
    if (a1(1)/=1) print *,101
    if (a1(2)/=1) print *,101
    if (a1(3)/=1) print *,101
    if (a1(4)/=1) print *,101
    write(1,*) a1,k1,k2,k3,k4
    end
