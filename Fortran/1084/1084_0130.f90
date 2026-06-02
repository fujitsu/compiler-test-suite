 type ty
    class(*),allocatable :: cptr
 end type
 type(ty) :: obj1,obj2
 integer::kk
 integer::jj

 allocate(integer(kind=4)::obj1%cptr)
 allocate(integer(kind=8)::obj2%cptr)
 select type(A=>obj1%cptr)
   type is(integer(kind=4))
        A=10
     select type(B=>obj2%cptr)
      type is(integer(kind=4))
          print*,"101"
      type is(integer(kind=8))
          B=12
     end select
    type is(integer(kind=8))
          print*,"103"
 end select
 select type(A=>obj1%cptr)
   type is(integer(kind=4))
    if(A.ne.10)print*,"131"
     select type(B=>obj2%cptr)
      type is(integer(kind=4))
          print*,"121"
      type is(integer(kind=8))
          if(B.ne.12)print*,"105"
     end select
 end select
 deallocate(obj1%cptr)
 deallocate(obj2%cptr)
 allocate(integer(kind=8)::obj1%cptr)
 allocate(integer(kind=8)::obj2%cptr)
  select type(A=>obj1%cptr)
   type is(integer(kind=4))
          print*,"143"
   type is(integer(kind=8))
         A= 34
         kk =A
     select type(B=>obj2%cptr)
      type is(integer(kind=4))
          print*,"151"
      type is(integer(kind=8))
          B=45
          jj =B
     end select
 end select
  if(kk.ne.34)print*,"301"
  if(jj.ne.45)print*,"302"
 print*,"PASS"
 end
