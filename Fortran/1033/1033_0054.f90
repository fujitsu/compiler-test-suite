      module m
       type z
        sequence
         integer,allocatable::za(:)
       end type
       type y
        sequence
         type(z),pointer::pp
       end type
       contains
        function fun(i) result(b)
         integer,pointer::i
         type(z),pointer::b
          allocate(b)
          allocate(b%za(i))
          b%za=(/(j,j=1,i)/)
        end function
      end module

       use m
       type(y)::a
       type(y)::aa
       integer,pointer::i,j
        allocate(i,j)
        i=5
        j=200
        allocate(a%pp,aa%pp)
        a%pp=>fun(i)
        aa%pp=>fun(j)
        if (any(a%pp%za/=(/1,2,3,4,5/))) print *,'error 1',a%pp%za
        if(.not.allocated(aa%pp%za)) print *,'error 2'
        print *,'pass'
      end
