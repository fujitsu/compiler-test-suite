block
  associate(a=>10)
  call sub01
  block
  interface
  subroutine sub02
  end subroutine
  end interface
    block
    call sub02
    end block
  end block
  end associate
end block
print*,"pass"
end 
subroutine sub01
end subroutine
subroutine sub02
end subroutine
