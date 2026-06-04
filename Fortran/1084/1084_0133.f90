 type ty
  class(*),allocatable :: cptr
 end type

 type(ty) :: obj1,obj2
 integer::kk
 real::jj

 allocate(integer::obj1%cptr)
 allocate(real::obj2%cptr)
 select type(A=>obj1%cptr)
   type is(integer(kind=1))
          A=11
          print*,"201"
   type is(character(len=*))
          A ="ch"
          print*,"203"
   type is(integer)
          A=12
          if(A.ne.12)print*,"101"
     select type(B=>obj2%cptr)
       type is(integer(kind=2))
             B=11
            print*,"301"
      type is(real)
             B=34
             A =13
             kk =A
             jj=B
             if(A.ne.13)print*,"102"
       type is(integer)
             B=45
             jj =B
     end select
   type is(real)
         A=34.5
         kk=A
   type is(integer(kind=2))
         print*,"103"
         A=36
         kk =A
         select type(B=>obj2%cptr)
            type is(real)
              B=34
              kk =A
              jj=B
              if(A.ne.12)print*,"102"
            type is(integer)
              B=45
              jj =B
         end select
 end select
 if(jj.ne.34)print*,"201"
 if(kk.ne.13)print*,"202"
 print*,"PASS"

 end
