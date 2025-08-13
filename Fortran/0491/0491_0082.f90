subroutine s1
   logical(8):: a01=.true.,a02=.true.
write(8,*) transfer(a01,a02)

end
call s1
print *,'pass'
end
