call s1
call s2
print *,'pass'
contains
subroutine s1
class(*),allocatable:: obj
obj='abcde'(2:3)
select type(obj)
type is(character(*))
   if(len(obj) .ne. 2)print*,"err1",len(obj)
   if(obj//'de' .ne. 'bcde')print*,"err2",obj//'de'
end select
end subroutine s1
subroutine s2
class(*),allocatable:: obj
i=2
obj='abcde'(i:3)
select type(obj)
type is(character(*))
   if(len(obj) .ne. 2)print*,"err3",len(obj)
   if(obj//'de' .ne. 'bcde')print*,"err4",obj//'de'
end select
end subroutine s2
end
