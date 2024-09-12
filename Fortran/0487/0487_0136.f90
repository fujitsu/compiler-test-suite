       INTERFACE OPERATOR(+)
       function pls(a,b)
       class(*), allocatable, intent(in) :: a(:)

       class(*), allocatable, intent(in) :: b(:)
       integer::pls(2)
       END function
       END INTERFACE operator(+)

       class(*) , allocatable::pptr(:)
       integer  ::pp(2)
       class(*), allocatable::pptr1(:)
        allocate(character::pptr(2))
        allocate(character::pptr1(2))
select type(pptr)
 type is(character(*))
       pptr = 'a'
end select
select type(pptr1)
 type is(character(*))
       pptr1 = 'b'
end select
       pp= pptr + pptr1
       if (any(pp/=2)) print *,301
if (any(pls(pptr,pptr1)/=2)) print *,302
print *,'pass'

END

function pls(a,b)
 class(*), allocatable, intent(in) :: a(:)
 class(*), allocatable, intent(in) :: b(:)

 integer :: pls(2)

 select type(a)
 type is(character(*))
  select type(b)
  type is(character(*))
   pls = len(a // b)
  end select
 end select
END function
