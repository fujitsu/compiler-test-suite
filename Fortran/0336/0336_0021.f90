subroutine ss( vi, vo )
intent(in) vi
intent(out) vo
vo = 1.0
print *,vi
end
  interface
    subroutine ss( vi, vo )
    intent(in) vi
    intent(out) vo
    end subroutine
  end interface
call set(arg_org)
arg1 = arg_org
call ss(arg1, arg_org)
end
subroutine set(v)
v=2.0
end
