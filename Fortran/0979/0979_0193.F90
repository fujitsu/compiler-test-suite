call test01()
call test21()
call test31()
call test41()
call atest01()
call atest21()
call atest31()
call atest41()
call btest01()
call btest11()

print *,"pass"
end

subroutine btest01()
real   (kind=4) :: i
i=1.0_4
call sub(%val(i))
contains
subroutine sub(i)
value :: i
real   (kind=4) :: i
if (i.ne.1.0_4) write(6,*) "NG"
end subroutine
end

subroutine btest11()
real   (kind=8) :: i
i=1.0_4
call sub(%val(i))
contains
subroutine sub(i)
value :: i
real   (kind=8) :: i
if (i.ne.1.0_4) write(6,*) "NG"
end subroutine
end


subroutine test01()
integer(kind=1) :: i
i=1
call sub(%val(i))
contains
subroutine sub(i)
value :: i
integer(kind=1) :: i
if (i.ne.1) write(6,*) "NG"
end subroutine
end

subroutine test21()
integer(kind=2) :: i
i=1
call sub(%val(i))
contains
subroutine sub(i)
value :: i
integer(kind=2) :: i
if (i.ne.1) write(6,*) "NG"
end subroutine
end

subroutine test31()
integer(kind=4) :: i
i=1
call sub(%val(i))
contains
subroutine sub(i)
value :: i
integer(kind=4) :: i
if (i.ne.1) write(6,*) "NG"
end subroutine
end

subroutine test41()
integer(kind=8) :: i
i=1
call sub(%val(i))
contains
subroutine sub(i)
value :: i
integer(kind=8) :: i
if (i.ne.1) write(6,*) "NG"
end subroutine
end



subroutine atest01()
logical(kind=1) :: i
i=.false.
call sub(%val(i))
contains
subroutine sub(i)
value :: i
logical(kind=1) :: i
if (i.neqv..false.) write(6,*) "NG"
end subroutine
end

subroutine atest21()
logical(kind=2) :: i
i=.false.
call sub(%val(i))
contains
subroutine sub(i)
value :: i
logical(kind=2) :: i
if (i.neqv..false.) write(6,*) "NG"
end subroutine
end

subroutine atest31()
logical(kind=4) :: i
i=.false.
call sub(%val(i))
contains
subroutine sub(i)
value :: i
logical(kind=4) :: i
if (i.neqv..false.) write(6,*) "NG"
end subroutine
end

subroutine atest41()
logical(kind=8) :: i
i=.false.
call sub(%val(i))
contains
subroutine sub(i)
value :: i
logical(kind=8) :: i
if (i.neqv..false.) write(6,*) "NG"
end subroutine
end


