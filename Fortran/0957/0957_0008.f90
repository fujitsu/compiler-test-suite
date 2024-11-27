             class(*),allocatable::obj
             allocate(obj, source= "ab")
             select type (v => f())
              type is (integer(kind=4))
                 print*,"103"
              type is (integer(kind=8))
                if (v/=10) print *,"101"
              class default
                print*,"123"
              end select

             select type (v2 => f2())
              type is (integer(kind=4))
                 print*,"104"
              type is (logical)
                if (v2(2).neqv..false.) print *,"102"
                if (v2(1).neqv..true.) print *,"103"
                if(size(v2).ne.2)print*,"303"
              class default
                print*,"163"
              end select

             select type (v3 => f3())
              class default
                print*,"193"
              type is (integer(kind=4))
                 print*,"106"
              type is (real(kind=8))
                 print*,"107"
              type is (real(kind=4))
                if (v3.ne.14) print *,"107"
             end select

             select type (v4 => f4())
              type is (integer(kind=4))
                 print*,"206"
              type is (real(kind=8))
                 print*,"207"
              type is (real(kind=4))
                 print*,"207"
              type is(character(len=*))
                if(len(v4).ne.3)print*,"801"
                if(v4.ne."abc")print*,"802"
              class default
                print*,"493"
             end select
             select type (v4 =>obj)
              type is (integer(kind=4))
                 print*,"206"
              type is (real(kind=8))
                 print*,"207"
              type is (real(kind=4))
                 print*,"207"
              class default
                print*,"793"
              type is(character(len=*))
                if(len(v4).ne.2)print*,"891"
                if(v4.ne."ab")print*,"892"
             end select
            print *,'pass'
           contains
           function f() result(r)
            class(*),pointer::r
            allocate(r, source= 10_8)
           end function

           function f2() result(r)
            class(*),pointer::r(:)
            allocate(r, source=[.true.,.false.])
           end function

            function f3() result(r)
            class(*),pointer::r
            allocate(r, source=14.0)
           end function
 
            function f4() result(r)
            class(*),pointer::r
            allocate(r, source="abc")
           end function
           end

