subroutine s1
type :: t1
  class(*),allocatable::a      
end type t1
type(t1)::obj                
select type(A=>obj%a)         
type is(character(*))
  if(A(1:2).ne."up")print*,"107"
end select
end
print *,'sngg583k : pass'
end
