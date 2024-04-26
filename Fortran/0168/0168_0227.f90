interface gen
   subroutine prc( tt,tt1,tt2,tt3)
    integer,optional :: tt,tt1,tt2,tt3
   end subroutine
end interface
call gen()
print *,'pass'
end
   subroutine prc( tt,tt1,tt2,tt3)
    integer,optional :: tt,tt1,tt2,tt3
if (present(tt)) print *,101
if (present(tt1)) print *,102
if (present(tt2)) print *,103
if (present(tt3)) print *,104
   end subroutine
