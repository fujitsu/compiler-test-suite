interface
  function func(i,n) result(array)
    integer,allocatable::array(:)
    integer::i(n)
  end function
end interface
integer::i(2)

n=0
i=(/1,2/)
if( .false. .or. .not.any(func(i,2)/=(/1,2/)) .and. .true.) then
  n=n+1 
endif
if( .false. .or. .not.any(func(i,2)/=(/1,2/)) .and. .not.any(i/=(/1,2/)) ) then
  n=n+1 
endif

if (n/=2) write(6,*) "NG"
print *,'pass'
end

function func(i,n) result(array)
integer,allocatable::array(:)
integer::i(n)

allocate(array(size(i)))
array=i

end
