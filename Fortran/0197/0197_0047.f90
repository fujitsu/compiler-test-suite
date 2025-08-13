subroutine s(p)
  integer,pointer:: p
  intent(in)::p
write(4,*)p
end
subroutine t(p)
  integer,intent(in),pointer:: p
write(4,*)p
end
print *,'pass'
end
