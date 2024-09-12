call s1()
print *,'pass'
contains
  subroutine s1(a)
    class(*),pointer,dimension(:),optional::a
if (present(a)) print *,301
  end subroutine
end
