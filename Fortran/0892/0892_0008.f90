interface gnr
subroutine sub1
end subroutine
end interface
block
  interface gnr
  subroutine sub1
  end subroutine
  end interface
end block
end

subroutine sub1
print*,"in sub1"
end subroutine

