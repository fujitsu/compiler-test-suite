 type ty
    class(*),allocatable :: cptr
 end type
 type(ty) :: obj1,obj2 ,obj3 ,obj4
 character(len=2)::ch
 allocate(integer(kind=4)::obj1%cptr)
 allocate(integer(kind=8)::obj2%cptr)
 allocate(character(len=2)::obj3%cptr)
 allocate(real(kind=4)::obj4%cptr)
 
 select type(A=>obj1%cptr)
   type is(integer(kind=4))
        A=10
     select type(A=>obj2%cptr)
      type is(integer(kind=4))
           A=31
          print*,"121"
      type is(integer(kind=8))
           A=30
       select type(A=>obj4%cptr)
              type is(real(kind=8))
                A =41
                print*,"131"
              type is(real(kind=4))
               A =44
              select type(A=>obj3%cptr)
                type is(integer(kind=4))
                    D=55
                    A=D
               type is(character(len=*))
                   A="AA"
                  ch =A
             end select
             if(A.ne.44)print*,"101"
       end select
             if(A.ne.30)print*,"111"
      end select
             if(A.ne.10)print*,"131"
    end select
  if(ch.ne."AA")print*,"110"
 print*,"PASS"
 end
