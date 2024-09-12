subroutine s1
  interface
     subroutine sub()
     end subroutine
  end interface
  type x
    procedure(sub),pointer,nopass::a,b,c
  end type
  type(x)::v
  v%a=>sub
  v%b=>v%a
  v%c=>v%b
  call v%a
  call v%b
  call v%c
end
call s1
print *,'pass'
end
     subroutine sub()
     end subroutine
