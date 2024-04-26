call test()
print *,'pass'
end
subroutine test()
type ty1
integer :: a = 1
integer :: b
integer :: c = 1
end type
type (ty1) :: t
t = ty1(b = 3)
if (t%a.ne. 1  )print *,'err'
if (t%b.ne. 3  )print *,'err'
if (t%c.ne. 1  )print *,'err'
t = ty1(2, 3)
if (t%a.ne. 2  )print *,'err'
if (t%b.ne. 3  )print *,'err'
if (t%c.ne. 1  )print *,'err'
t = ty1(b = 3, c = 8)
if (t%a.ne. 1  )print *,'err'
if (t%b.ne. 3  )print *,'err'
if (t%c.ne. 8  )print *,'err'
end
