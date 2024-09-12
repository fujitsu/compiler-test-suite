   MODULE mod_uddtio
           TYPE :: type_b
              real :: iinb=1.
              INTEGER :: iina=1
            CONTAINS
             procedure:: write_formatted_b
             GENERIC :: WRITE(FORMATTED) => write_formatted_b
         END TYPE type_b
          TYPE :: type_a
             real :: iinb=2.
             INTEGER :: iina=2
             type(type_b), pointer     :: class_ina
           CONTAINS
             procedure:: write_formatted
             GENERIC :: WRITE(FORMATTED) => write_formatted
          END TYPE type_a
        CONTAINS
          SUBROUTINE write_formatted (dtv,unit,iotype,list,iostat,iomsg)
           CLASS(type_a), INTENT(IN) :: dtv
           INTEGER, INTENT(IN) :: unit
            CHARACTER (LEN=*), INTENT(IN) :: iotype
           INTEGER, INTENT(IN) :: list(:)
            INTEGER, INTENT(OUT) :: iostat
           CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
select type(dtv)
 class is( type_a)
end select
          end SUBROUTINE write_formatted

       SUBROUTINE write_formatted_b (dtv,unit,iotype,list,iostat,iomsg)
            CLASS(type_b), INTENT(IN) :: dtv
           INTEGER, INTENT(IN) :: unit
           CHARACTER (LEN=*), INTENT(IN) :: iotype
           INTEGER, INTENT(IN) :: list(:)
            INTEGER, INTENT(OUT) :: iostat
            CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
select type(dtv)
 class is( type_b)
write(1,*) dtv
end select
          end SUBROUTINE
        END MODULE mod_uddtio

       PROGRAM MAIN
          use mod_uddtio
          TYPE(type_a) :: var_a
          namelist /nam/ var_a
          ALLOCATE(type_b::var_a%class_ina)
          var_a%class_ina%iina = 1
          var_a%class_ina%iina = 1
          WRITE(1, nam)
          WRITE(2,*)var_a
print *,'pass'
        END PROGRAM MAIN
