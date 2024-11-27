MODULE ISO_VARYING_STRING
  TYPE VARYING_STRING
    CHARACTER,DIMENSION(:),POINTER :: chars
  ENDTYPE VARYING_STRING
  CONTAINS
    FUNCTION s_eq_s(string_a,string_b)
      type(VARYING_STRING),INTENT(IN) :: string_a,string_b
      LOGICAL                         :: s_eq_s
      INTEGER                         :: la,lb
      s_eq_s = ALL(string_a%chars == string_b%chars(1:la)) .AND. &
               ALL(" " == string_b%chars(la+1:lb))
    ENDFUNCTION s_eq_s
ENDMODULE ISO_VARYING_STRING
print *,'pass'
end
