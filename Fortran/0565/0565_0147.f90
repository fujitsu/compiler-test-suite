module m1
        type x1
        integer,allocatable ::a(:)
        end type
        type,extends(x1):: x2
        integer,allocatable::b(:)
        end type
        class(*),allocatable::pp
      end

       use m1
       allocate(pp,source=x2([(k,k=1,20)],[(k,k=1,30)]))

       call sub(1,2,3,4)

       select type (pp)
       type is(x2)
       if (any(pp%b/=[(k,k=1,30)])) print *,"ng.." 
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
