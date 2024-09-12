call s1
call s2
print *,'pass'
contains
subroutine s1
class(*),allocatable:: obj
obj='abcde'(2:)
select type(obj)
type is(character(*))
   if(len(obj) .ne. 4)print*,"err1",len(obj)
   if(obj//'de' .ne. 'bcdede')print*,"err2",obj//'de'
end select
end subroutine s1
subroutine s2
class(*),allocatable:: obj
i=2
obj='abcde'(i:)
select type(obj)
type is(character(*))
   if(len(obj) .ne. 4)print*,"err3",len(obj)
   if(obj//'de' .ne. 'bcdede')print*,"err4",obj//'de'
end select
end subroutine s2
end
