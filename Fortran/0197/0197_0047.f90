subroutine s(p)
  integer,pointer:: p
  intent(in)::p
write(1,*)p
end
subroutine t(p)
  integer,intent(in),pointer:: p
write(1,*)p
end
print *,'pass'
end
