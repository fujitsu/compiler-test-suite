class(*),pointer ::obj
integer,target::arr
class(*),pointer ::obj2(:)
integer,target::arr2(2)
obj=>arr
obj2=>arr2
select type(ASC=>obj)
type is(integer)
   ASSIGN 100 to ASC
   GOTO ASC    !!! Error message displayed
   100  arr=12
   if(arr /= 12) print*,101
class default
 print*,"102"
end select

select type(asc=>obj)
type is(integer)
asc = 2
  GOTO (400,500)asc
  400  arr=15
  print*,"108"
  if(arr /= 15) print*,103
  500  arr=16
  if(arr /= 16) print*,104
class default
 print*,"104"
end select

select type(asc=>obj2(1:2))
type is(integer)
asc(1) = 2
asc(2) = 600
  GOTO (600,700)asc(1)
  600  arr2=17
  print*,"107"
  if(any(arr2 /= 17)) print*,105
  700  arr2=18
  if(any(arr2 /= 18)) print*,106
class default
 print*,"104"
end select

print*,"Pass"
end

