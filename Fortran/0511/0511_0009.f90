call s1
call s2
print *,'pass'
contains
subroutine s1
  class (*), allocatable :: a, b, c, d
  allocate(a, source = 0    )
  allocate(b, source = 0.0  )
  allocate(c, source = (0.0,0.0))
  allocate(d, source = 'zero')
  select type (zzz=>a)
  type is (integer)
     zzz=1
     select type (zzz=>b)
     type is (real)
        zzz=1.0
     end select
     select type (zzz=>c)
     type is (complex)
        zzz=(1.0,0.0)
     end select
     select type (zzz=>d)
     type is (character(*))
        zzz="ok"
     end select
  class default
  end select
end subroutine s1
subroutine s2
  class (*), allocatable :: a(:), b(:), c(:), d(:)
  allocate(a, source = [0]    )
  allocate(b, source = [0.0]  )
  allocate(c, source = [(0.0,0.0)])
  allocate(d, source = ['zero'])
  select type (zzz=>a)
  type is (integer)
     zzz=[1]
     select type (zzz=>b)
     type is (real)
        zzz=[1.0]
     end select
     select type (zzz=>c)
     type is (complex)
        zzz=[(1.0,0.0)]
     end select
     select type (zzz=>d)
     type is (character(*))
        zzz=["ok"]
     end select
  class default
  end select
end subroutine s2
end program
