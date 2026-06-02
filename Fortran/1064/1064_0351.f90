MODULE m1
    TYPE NODEX
      INTEGER::xx
    END TYPE NODEX
    TYPE node
      INTEGER :: next_node = 0
    CONTAINS
      PROCEDURE :: pwf
      GENERIC :: WRITE(FORMATTED) => pwf
    END TYPE node
CONTAINS
  SUBROUTINE pwf (dtv,unit,iotype,vlist,iostat,iomsg)
    CLASS(node), INTENT(IN) :: dtv
    INTEGER, INTENT(IN) :: unit
    CHARACTER (LEN=*), INTENT(IN) :: iotype
    INTEGER, INTENT(IN) :: vlist(:)
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
    WRITE(unit,*,iostat=iostat,iomsg=iomsg) dtv%next_node,iotype,vlist
  END SUBROUTINE pwf
END MODULE m1

  use m1
  type(node),target::x
  CLASS(*),pointer :: p
  write(1,'(dt"1")')x
p=>x
select type(p)
 type is(node)
  write(1,'(dt"1")')p
end select

print *,'pass'
end
