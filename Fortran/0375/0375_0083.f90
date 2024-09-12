call sub(1)
print *,'pass'
contains
subroutine sub(iii)
  integer,intent(in) :: iii
  value :: iii
end subroutine

end
