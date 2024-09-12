call s1
call s2
print*,"pass"
contains
subroutine s1
class(*),allocatable:: obj
character(len=5) :: ch
ch='abcde'
i=2
j=3
obj=ch(i**1:j)
select type(obj)
type is(character(*))
   if(len(obj) .ne. 2)print*,"101",len(obj)
   if(obj//'de' .ne. 'bcde')print*,"102",obj//'de'
end select
end subroutine s1
subroutine s2
class(*),allocatable:: obj
i=2
j=3
obj='abcde'(i:j)
select type(obj)
type is(character(*))
   if(len(obj) .ne. 2)print*,"101",len(obj)
   if(obj//'de' .ne. 'bcde')print*,"102",obj//'de'
end select
end subroutine s2
end
