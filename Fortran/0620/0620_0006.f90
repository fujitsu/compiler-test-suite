subroutine s1(n)
class(*), pointer :: ptr_1 
class(*), pointer :: ptr_2(:)

if (n==0) then
  allocate(ptr_1, source = ptr_2(2))
endif

END
call s1(1)
print *,'pass'
end
