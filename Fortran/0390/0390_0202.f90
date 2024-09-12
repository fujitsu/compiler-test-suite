subroutine s2
  character(5) :: array(3)
k1=1
  if (.not.is_contiguous(array(:)(k1:))) print *,1012
end
call s2
print *,'pass'
end
