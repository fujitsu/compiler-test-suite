MODULE callback_list_module
!
TYPE callback_data
END TYPE
!
!
ABSTRACT INTERFACE
SUBROUTINE callback_procedure(data)
IMPORT callback_data
CLASS(callback_data),OPTIONAL :: data
END SUBROUTINE
END INTERFACE
!
!
TYPE callback_list
PRIVATE
CLASS(callback_record),POINTER :: first => NULL()
END TYPE
!
!
TYPE,PRIVATE :: callback_record
PROCEDURE(callback_procedure),POINTER,NOPASS :: proc
CLASS(callback_record),POINTER :: next
CLASS(callback_data),POINTER :: data => NULL();
END TYPE
PRIVATE invoke,forward_invoke
CONTAINS
!
!
SUBROUTINE register_callback(list, entry, data)
TYPE(callback_list),INTENT(INOUT) :: list
PROCEDURE(callback_procedure) :: entry
CLASS(callback_data),OPTIONAL :: data
TYPE(callback_record),POINTER :: new,last
ALLOCATE(new)
new%proc => entry
IF (PRESENT(data)) ALLOCATE(new%data,SOURCE=data)
new%next => list%first
list%first => new
END SUBROUTINE
!
!
SUBROUTINE invoke(callback)
class(callback_record),POINTER :: callback
IF (ASSOCIATED(callback%data)) THEN
CALL callback%proc(callback%data)
DEALLOCATE(callback%data)
ELSE
CALL callback%proc
END IF
DEALLOCATE(callback)
END SUBROUTINE
!
!
SUBROUTINE invoke_callback_reverse(list)
TYPE(callback_list),INTENT(INOUT) :: list
class(callback_record),POINTER :: next,current
current => list%first
NULLIFY(list%first)
DO WHILE (ASSOCIATED(current))
next => current%next
CALL invoke(current)
current => next
END DO
END SUBROUTINE
!
!
RECURSIVE SUBROUTINE forward_invoke(callback)
class(callback_record),POINTER :: callback
IF (ASSOCIATED(callback%next)) CALL forward_invoke(callback%next)
CALL invoke(callback)
END SUBROUTINE
!
!
SUBROUTINE invoke_callback_forward(list)
TYPE(callback_list),INTENT(INOUT) :: list
IF (ASSOCIATED(list%first)) CALL forward_invoke(list%first)
END SUBROUTINE
END

subroutine s1
 use  callback_list_module
end

call s1
print *,'pass'
end
