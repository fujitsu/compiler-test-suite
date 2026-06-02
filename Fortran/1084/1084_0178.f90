         type ty
           integer,allocatable::alc
          class(*),allocatable::aa
        end type
        type(ty),pointer::obj
        allocate(obj)
        allocate(obj%alc)
        allocate(obj%aa,source=20)
         call sub(obj%aa)
         select type(asc=>obj%aa)
         type is(integer)
          call sub(obj%aa)
          call sub2(asc)
          call sub3(obj%aa,asc)
          call sub3(obj%aa,fun(asc))
        end select
        print*,"PASS"
        contains
        subroutine sub(d1)
        class(*),pointer,intent(in)::d1
        select type(A=>d1)
         type is(integer)
             if(A.ne.20)print*,"101"
        end select
        end
        subroutine sub2(d1)
        class(*)::d1
        select type(A=>d1)
         type is(integer)
             if(A.ne.20)print*,"102"
        end select
        end
        subroutine sub3(d1,d2)
        class(*),pointer,intent(in)::d1
        class(*)::d2
        select type(A=>d1)
         type is(integer)
             if(A.ne.20)print*,"101"
        end select
        select type(A=>d2)
         type is(integer)
             if(A.ne.20)print*,"102"
        end select
        end
        function fun(d1)
         class(*)::d1
         integer::fun
         select type(A=>d1)
         type is(integer)
             if(A.ne.20)print*,"102"
             fun =A
         end select
        end
        end

