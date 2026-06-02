interface gen
   subroutine prc(tt,tt1,tt2,tt3)
     integer,optional :: tt,tt1,tt2,tt3
   end subroutine
end interface
call gen()
print *,'pass'
end

subroutine prc(tt,tt1,tt2,tt3)
  integer,optional :: tt,tt1,tt2,tt3
end subroutine
