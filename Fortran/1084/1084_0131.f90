 type ty
  class(*),allocatable :: cptr
 end type

 type(ty) :: obj1,obj2
 integer::kk
 real::jj

 allocate(integer::obj1%cptr)
 allocate(real::obj2%cptr)
 select type(A=>obj1%cptr)
   type is(integer)
          A=12
          if(A.ne.12)print*,"101"
     select type(B=>obj2%cptr)
      type is(real)
             B=34
             kk =A
             jj=B
             if(A.ne.12)print*,"102",A
       type is(integer)
     end select
       type is(real)
 end select
 if(jj.ne.34)print*,"201"
 if(kk.ne.12)print*,"202"
select type(A=>obj1%cptr)
   type is(integer)
          A=12
          if(A.ne.12)print*,"111",A
     deallocate(obj1%cptr)
     allocate(real::obj1%cptr)
     select type(B=>obj1%cptr)
      type is(real)
             B=34
            if(B.ne.34)print*,"131"
       type is(integer)
     end select
       type is(real)
 end select
 print*,"PASS"

 end
