 type ty
    class(*),allocatable :: cptr
 end type
 type(ty) :: obj1,obj2 ,obj3 ,obj4

 allocate(integer(kind=4)::obj1%cptr)
 allocate(integer(kind=8)::obj2%cptr)
 allocate(integer(kind=2)::obj3%cptr)
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
         end select       
         if(B.ne.12)print*,"151",B
     end select
     if(A.ne.44)print*,"191"
     select type(A=>obj3%cptr)
      type is(integer(kind=4))
           A=31
          print*,"121"
      type is(integer(kind=2))
           A=31
     end select
     if(A.ne.44)print*,"192"
  end select
  select type(B=>obj2%cptr)
      type is(integer(kind=8))
          if(B.ne.12)print*,"109"
  end select
 print*,"PASS"
 end
