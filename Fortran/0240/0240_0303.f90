call test()
print *,'pass'
end
subroutine test()
type my_type
integer :: i,j
character(len=40) :: string
end type my_type
type (my_type) :: a
a = my_type (4, 5.0*2.3, 'abcdefg')
if (a%i.ne. 4  )print *,'err'
if (a%j.ne. int(5.0*2.3)  )print *,'erra'
if (a%string.ne. 'abcdefg'  )print *,'err'
end
