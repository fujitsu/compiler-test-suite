        subroutine s1
         type :: t1
           class(*),allocatable::a
         end type t1
         type(t1)::obj
         allocate(obj%a,source= "upa")
         select type(A=>obj%a)
         class default
           print*,"101"
         type is(character(*))
           if(A(1:2).ne."up")print*,"107"
           if(len(A).ne.3)print*,"113"
           if(len(A(1:2)).ne.2)print*,"213"
           A(1:2) = "px"
         end select
         select type(A=>obj%a)
         class default
           print*,"131"
         type is(character(*))
           if(A(1:3).ne."pxa")print*,"103",A(1:3)
           if(len(A).ne.3)print*,"113"
         end select
         print*,"PASS"
         end
         call s1
         end

