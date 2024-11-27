interface
  subroutine sub() bind(C,name="abc")
    common/com/iii
    bind(C,name="abc") :: /com/
  end subroutine
end interface
end
