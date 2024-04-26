subroutine s1
 call x1
block
 call x2
end block
end
call s1
print *,'pass'
end
subroutine x1
end
subroutine x2
end
