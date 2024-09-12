procedure(f1),pointer::f
interface
  function f1()
    character(len=:),pointer:: f1
  end function
end interface
character(2)::x
f=>f1
x=f()
if (x/='12') print *,202
print *,"pass"
end

  function f1()
    character(len=:),pointer:: f1
    allocate(character(2)::f1)
    f1='12'
  end function
