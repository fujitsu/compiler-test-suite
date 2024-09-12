subroutine sub01()
 character            :: ch
 integer, allocatable :: ia1(:), ia2(:)

 print *,COMMAND_ARGUMENT_COUNT()
 print *,NEW_LINE(ch)
 ii=0
 call GET_COMMAND()
 call GET_COMMAND_ARGUMENT(ii)
 call GET_ENVIRONMENT_VARIABLE(ch)
 call MOVE_ALLOC(ia1, ia2)
end subroutine

subroutine sub02()
 intrinsic COMMAND_ARGUMENT_COUNT
 intrinsic NEW_LINE
 intrinsic GET_COMMAND
 intrinsic GET_COMMAND_ARGUMENT
 intrinsic GET_ENVIRONMENT_VARIABLE
 intrinsic MOVE_ALLOC
end subroutine
print *,"pass"
end
