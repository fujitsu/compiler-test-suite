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
     select type(B=>obj2%cptr)
      type is(integer(kind=4))
           A=31
          print*,"121"
      type is(integer(kind=8))
           A=30
           B=12
       select type(B=>obj4%cptr)
          type is(real(kind=8))
              A =41
              B=17
              print*,"131"
              type is(real(kind=4))
               A =44
               B=17
               if(A.ne.44)print*,"101"
               if(B.ne.17)print*,"171"
              select type(D=>obj1%cptr)
                type is(real(kind=8))
                   print*,"341"
                type is(integer(kind=4))
                    D=55
                    A=D
                select type(A=>obj3%cptr)
                  type is(real(kind=8))
                   print*,"341"
                  type is(character(len=*))
                   A ="XX"
                end select
               end select  
         end select       
         if(B.ne.12)print*,"151",B
         if(A.ne.55)print*,"199"
     end select
     if(A.ne.55)print*,"191"
     select type(A=>obj3%cptr)
       type is(integer(kind=4))
           A=31
          print*,"121"
       type is(integer(kind=2))
           A=31
       type is(character(len=*))
           if(A.ne."XX")print*,"191"
           A="AA"
           ch =A
      end select
      if(A.ne.55)print*,"192"
    end select
  select type(B=>obj2%cptr)
      type is(integer(kind=8))
          if(B.ne.12)print*,"109"
  end select
  if(ch.ne."AA")print*,"110"
 print*,"PASS"
 end
