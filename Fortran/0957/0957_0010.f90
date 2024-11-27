            type ty
              integer::a
            end type
            class(*),allocatable::obj(:,:)
            allocate(obj(2,2), source="abc")
            select type (v => f())
              type is (ty)
                 print*,"101"
              type is (integer(kind=8))
                if (any(v/=10)) print *,"101"
                if(any(shape(v).ne.[2,3]))print*,"202",shape(v)
               class default
                  print*,"673"
              end select

             select type (v2 => f2())
              type is (ty)
                 print*,"1101"
              type is (logical)
                if (v2(2).neqv..false.) print *,"102"
                if (v2(1).neqv..true.) print *,"103"
                if(size(v2).ne.2)print*,"303"
              class default
                print*,"793"
              end select

             select type (v3 => f3())
              type is (ty)
                 print*,"1201"
              type is (real(kind=4))
                if (any(v3.ne.14)) print *,"107"
               class default
                  print*,"973"
             end select

             select type (v4 => f4())
              type is (ty)
                 print*,"1301"
              type is(character(len=*))
                if(len(v4).ne.3)print*,"801"
                if(any(v4.ne."abc"))print*,"802"
                if(any(shape(v4).ne.[2,2]))print*,"803",shape(v4)
               class default
                  print*,"671"
             end select
             select type (v4 =>obj)
              type is (ty)
                 print*,"1401"
              type is(character(len=*))
                if(len(v4).ne.3)print*,"811"
                if(any(v4.ne."abc"))print*,"822"
                if(any(shape(v4).ne.[2,2]))print*,"833",shape(v4)
               class default
                  print*,"671"
             end select
              select type (v4 =>obj)
               class default
                  print*,"681"
               type is(character(len=*))
                if(len(v4).ne.3)print*,"511"
                if(any(v4.ne."abc"))print*,"722"
                if(any(shape(v4).ne.[2,2]))print*,"933",shape(v4)
             end select


              print *,'pass'
           contains
           function f() result(r)
            class(*),allocatable::r(:,:)
            allocate(r(2,3), source= 10_8)
           end function

           function f2() result(r)
            class(*),allocatable::r(:)
            allocate(r, source=[.true.,.false.])
           end function

            function f3() result(r)
            class(*),allocatable::r(:)
            allocate(r(10), source=14.0)
           end function
 
            function f4() result(r)
            class(*),allocatable::r(:,:)
            allocate(r(2,2), source="abc")
           end function
           end

