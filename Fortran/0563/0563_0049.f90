PROGRAM MAIN
class(*), pointer :: ptr_1
class(*), pointer :: ptr_2
class(*), pointer :: ptr_3(:)

allocate(integer(kind=8) :: ptr_3(20))
select type(ptr_3)
    type is(integer(kind=8))
      ptr_3 = 10 
      ptr_3(2) = 20 
end select

allocate(ptr_1,ptr_2 ,source = ptr_3(2))

if(ASSOCIATED(ptr_1).neqv..true.) print*,103
if(ASSOCIATED(ptr_2).neqv..true.) print*,104

select type(ptr_1)
    type is(integer(kind=4))
       print*,105
    type is(integer(kind=8))
      if(ptr_1 .ne. 20) print*,106
    class default
      print*,108 
end select

select type(ptr_2)
    type is(integer(kind=4))
       print*,205
    type is(integer(kind=8))
      if(ptr_2 .ne. 20) print*,206
    class default
      print*,208 
end select
print*,"pass"

END
