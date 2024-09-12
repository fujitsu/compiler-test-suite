program main
class(*),allocatable :: act2(:,:)
call s(act2,5)

contains
subroutine s(unlim,n)
class(*),allocatable :: unlim(:,:)
integer :: stat = 0
character(len=n) :: xx(5,3)
  xx='null'
  xx(3,2)='name'
allocate(unlim,source = ch(xx,n))
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif

end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:)
 if(sizeof(dmy) /= 5*15) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  if(dmy(3,2)/='name') print*,203
  fun=1
end select  
end function

function ch(dum,num)
character(len=num),allocatable :: ch(:,:)
integer::num
character(len=num) :: dum(5,3)
allocate(ch,source = dum)
end function
end
