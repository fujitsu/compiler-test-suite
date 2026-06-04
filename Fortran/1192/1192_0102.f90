     module m1
       type    b
         integer(8)::d1
         type (b),allocatable:: bbb
       end type
       contains
       subroutine s(d,k)
         class(*)::d
         select type(z=>d)
           type is(b)
             allocate(z%bbb)
             if (k>2) return
             k=k+1
             call t(z%bbb)
           class default
            print *,'error 300'
         end select
       end

       subroutine t(d)
         class(*)::d
         select type(z=>d)
           type is(b)
             allocate(z%bbb)
           class default
            print *,'error 3300'
         end select
       end
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1!,v2
     allocate(b::v1)
     k=1
     call s(v1,k)
     end

     call s1
     print *,'sngg314p : pass'
     end 

