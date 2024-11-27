MODULE ISO_VARYING_STRING

PRIVATE 

TYPE VARYING_STRING
 PRIVATE 
 CHARACTER,DIMENSION(:),POINTER :: chars => NULL()
ENDTYPE VARYING_STRING 

CHARACTER,PARAMETER :: blank = " " 

INTERFACE LEN 
  MODULE PROCEDURE len_s
ENDINTERFACE 

INTERFACE VAR_STR
  MODULE PROCEDURE c_to_s
ENDINTERFACE 

INTERFACE CHAR
  MODULE PROCEDURE s_to_c, &
                   s_to_fix_c
ENDINTERFACE 

INTERFACE ASSIGNMENT(=) 
  MODULE PROCEDURE s_ass_s, &
                   c_ass_s, &
                   s_ass_c
ENDINTERFACE 

INTERFACE OPERATOR(//) 
  MODULE PROCEDURE s_concat_s, &
                   s_concat_c, &
                   c_concat_s
ENDINTERFACE 

INTERFACE REPEAT 
  MODULE PROCEDURE repeat_s
ENDINTERFACE 

INTERFACE OPERATOR(==) 
  MODULE PROCEDURE s_eq_s, &
                   s_eq_c, &
                   c_eq_s
ENDINTERFACE 

INTERFACE OPERATOR(/=) 
  MODULE PROCEDURE s_ne_s, &
                   s_ne_c, &
                   c_ne_s
ENDINTERFACE 

INTERFACE OPERATOR(<) 
  MODULE PROCEDURE s_lt_s, &
                   s_lt_c, &
                   c_lt_s
ENDINTERFACE 

INTERFACE OPERATOR(<=) 
  MODULE PROCEDURE s_le_s, &
                   s_le_c, &
                   c_le_s
ENDINTERFACE 

INTERFACE OPERATOR(>=) 
  MODULE PROCEDURE s_ge_s, &
                   s_ge_c, &
                   c_ge_s
ENDINTERFACE 

INTERFACE OPERATOR(>) 
  MODULE PROCEDURE s_gt_s, &
                   s_gt_c, &
                   c_gt_s
ENDINTERFACE 

INTERFACE LLT 
  MODULE PROCEDURE s_llt_s, &
                   s_llt_c, &
                   c_llt_s
ENDINTERFACE 

INTERFACE LLE 
  MODULE PROCEDURE s_lle_s, &
                   s_lle_c, &
                   c_lle_s
ENDINTERFACE 

INTERFACE LGE 
  MODULE PROCEDURE s_lge_s, &
                   s_lge_c, &
                   c_lge_s
ENDINTERFACE 

INTERFACE LGT 
  MODULE PROCEDURE s_lgt_s, &
                   s_lgt_c, &
                   c_lgt_s
ENDINTERFACE 

INTERFACE GET
  MODULE PROCEDURE get_d_eor, &
                   get_u_eor, &
                   get_d_tset_s, &
                   get_u_tset_s, &
                   get_d_tset_c, &
                   get_u_tset_c
ENDINTERFACE 

INTERFACE PUT
  MODULE PROCEDURE put_d_s, &
                   put_u_s, &
                   put_d_c, &
                   put_u_c
ENDINTERFACE 

INTERFACE PUT_LINE
  MODULE PROCEDURE putline_d_s, &
                   putline_u_s, &
                   putline_d_c, &
                   putline_u_c
ENDINTERFACE 

INTERFACE INSERT 
  MODULE PROCEDURE insert_ss, &
                   insert_sc, &
                   insert_cs, &
                   insert_cc
ENDINTERFACE 

INTERFACE REPLACE 
  MODULE PROCEDURE replace_ss, &
                   replace_sc, &
                   replace_cs, &
                   replace_cc, &
                   replace_ss_sf,&
                   replace_sc_sf,&
                   replace_cs_sf,&
                   replace_cc_sf,&
                   replace_sss, &
                   replace_ssc, &
                   replace_scs, &
                   replace_scc, &
                   replace_css, &
                   replace_csc, &
                   replace_ccs, &
                   replace_ccc
ENDINTERFACE 

INTERFACE REMOVE 
  MODULE PROCEDURE remove_s, &
                   remove_c
ENDINTERFACE 

INTERFACE EXTRACT 
  MODULE PROCEDURE extract_s, &
                   extract_c
ENDINTERFACE 

INTERFACE SPLIT
  MODULE PROCEDURE split_s, &
                   split_c
ENDINTERFACE

INTERFACE INDEX 
  MODULE PROCEDURE index_ss, index_sc, index_cs
ENDINTERFACE 

INTERFACE SCAN 
  MODULE PROCEDURE scan_ss, scan_sc, scan_cs
ENDINTERFACE 

INTERFACE VERIFY 
  MODULE PROCEDURE verify_ss, verify_sc, verify_cs
ENDINTERFACE 

INTERFACE LEN_TRIM 
  MODULE PROCEDURE len_trim_s
ENDINTERFACE 

INTERFACE TRIM 
  MODULE PROCEDURE trim_s
ENDINTERFACE 

INTERFACE IACHAR
  MODULE PROCEDURE iachar_s
ENDINTERFACE 

INTERFACE ICHAR 
  MODULE PROCEDURE ichar_s
ENDINTERFACE 

INTERFACE ADJUSTL 
  MODULE PROCEDURE adjustl_s
ENDINTERFACE 

INTERFACE ADJUSTR 
  MODULE PROCEDURE adjustr_s
ENDINTERFACE 

PUBLIC :: VARYING_STRING,VAR_STR,CHAR,LEN,GET,PUT,PUT_LINE,INSERT,REPLACE,   &
          SPLIT,REMOVE,REPEAT,EXTRACT,INDEX,SCAN,VERIFY,LLT,LLE,LGE,LGT,     &
          ASSIGNMENT(=),OPERATOR(//),OPERATOR(==),OPERATOR(/=),OPERATOR(<),  &
          OPERATOR(<=),OPERATOR(>=),OPERATOR(>),LEN_TRIM,TRIM,IACHAR,ICHAR,  &
          ADJUSTL,ADJUSTR

CONTAINS 

  ELEMENTAL FUNCTION len_s(string)
  type(VARYING_STRING),INTENT(IN) :: string 
  INTEGER                         :: len_s 
  IF(.NOT.ASSOCIATED(string%chars))THEN 
    len_s = 0 
  ELSE 
    len_s = SIZE(string%chars) 
  ENDIF 
 ENDFUNCTION len_s 

 ELEMENTAL FUNCTION c_to_s(chr)
  type(VARYING_STRING)        :: c_to_s 
  CHARACTER(LEN=*),INTENT(IN) :: chr 
  INTEGER                     :: lc 
  lc=LEN(chr) 
  ALLOCATE(c_to_s%chars(1:lc)) 
  DO i=1,lc 
    c_to_s%chars(i) = chr(i:i) 
  ENDDO 
 ENDFUNCTION c_to_s 

 PURE FUNCTION s_to_c(string)
  type(VARYING_STRING),INTENT(IN)   :: string 
  CHARACTER(LEN=SIZE(string%chars)) :: s_to_c 
  INTEGER                           :: lc 
  lc=SIZE(string%chars) 
  DO i=1,lc 
    s_to_c(i:i) = string%chars(i) 
  ENDDO 
 ENDFUNCTION s_to_c 

 PURE FUNCTION s_to_fix_c(string,length)
  type(VARYING_STRING),INTENT(IN) :: string
  INTEGER,INTENT(IN)              :: length
  CHARACTER(LEN=length)           :: s_to_fix_c
  INTEGER                         :: lc
  lc=MIN(SIZE(string%chars),length)
  DO i=1,lc 
    s_to_fix_c(i:i) = string%chars(i)
  ENDDO 
  IF(lc < length)THEN
    s_to_fix_c(lc+1:length) = blank
  ENDIF
 ENDFUNCTION s_to_fix_c

ELEMENTAL SUBROUTINE s_ass_s(var,expr) 
  type(VARYING_STRING),INTENT(INOUT) :: var 
  type(VARYING_STRING),INTENT(IN)  :: expr 
  IF(ASSOCIATED(var%chars,expr%chars))THEN
    CONTINUE
  ELSEIF(ASSOCIATED(var%chars))THEN
    DEALLOCATE(var%chars)
    ALLOCATE(var%chars(1:SIZE(expr%chars)))
    var%chars = expr%chars
  ELSE
    ALLOCATE(var%chars(1:SIZE(expr%chars)))
    var%chars = expr%chars  
  ENDIF 
 ENDSUBROUTINE s_ass_s 

ELEMENTAL SUBROUTINE c_ass_s(var,expr) 
  CHARACTER(LEN=*),INTENT(OUT)    :: var 
  type(VARYING_STRING),INTENT(IN) :: expr 
  INTEGER                         :: lc,ls 
  lc = LEN(var); ls = MIN(LEN(expr),lc) 
  DO i = 1,ls 
   var(i:i) = expr%chars(i) 
  ENDDO 
  DO i = ls+1,lc 
   var(i:i) = blank 
  ENDDO 
 ENDSUBROUTINE c_ass_s 

ELEMENTAL SUBROUTINE s_ass_c(var,expr)
  type(VARYING_STRING),INTENT(OUT) :: var 
  CHARACTER(LEN=*),INTENT(IN)      :: expr 
  INTEGER                          :: lc 
  lc = LEN(expr) 
  IF(ASSOCIATED(var%chars))DEALLOCATE(var%chars)  
  ALLOCATE(var%chars(1:lc)) 
  DO i = 1,lc 
    var%chars(i) = expr(i:i) 
  ENDDO 
 ENDSUBROUTINE s_ass_c 

 ELEMENTAL FUNCTION s_concat_s(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
  type(VARYING_STRING)            :: s_concat_s 
  INTEGER                         :: la,lb 
  la = LEN(string_a); lb = LEN(string_b)
  ALLOCATE(s_concat_s%chars(1:la+lb)) 
  s_concat_s%chars(1:la) = string_a%chars 
  s_concat_s%chars(1+la:la+lb) = string_b%chars 
 ENDFUNCTION s_concat_s 

 ELEMENTAL FUNCTION s_concat_c(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a 
  CHARACTER(LEN=*),INTENT(IN)     :: string_b 
  type(VARYING_STRING)            :: s_concat_c 
  INTEGER                         :: la,lb 
  la = LEN(string_a); lb = LEN(string_b)
  ALLOCATE(s_concat_c%chars(1:la+lb)) 
  s_concat_c%chars(1:la) = string_a%chars 
  DO i = 1,lb
    s_concat_c%chars(la+i) = string_b(i:i)
  ENDDO 
 ENDFUNCTION s_concat_c 

 ELEMENTAL FUNCTION c_concat_s(string_a,string_b)
  CHARACTER(LEN=*),INTENT(IN)     :: string_a 
  type(VARYING_STRING),INTENT(IN) :: string_b 
  type(VARYING_STRING)            :: c_concat_s 
  INTEGER                         :: la,lb 
  la = LEN(string_a); lb = LEN(string_b)
  ALLOCATE(c_concat_s%chars(1:la+lb)) 
  DO i = 1,la 
     c_concat_s%chars(i) = string_a(i:i) 
  ENDDO 
  c_concat_s%chars(1+la:la+lb) = string_b%chars 
 ENDFUNCTION c_concat_s 

ELEMENTAL FUNCTION repeat_s(string,ncopies)                                     
 type(VARYING_STRING),INTENT(IN) :: string 
 INTEGER,INTENT(IN)              :: ncopies 
 type(VARYING_STRING)            :: repeat_s
 INTEGER                         :: lr,ls 
 IF (ncopies <= 0) THEN 
     ALLOCATE(repeat_s%chars(1:0))
     RETURN
 ENDIF 
 ls = LEN(string); lr = ls*ncopies 
 ALLOCATE(repeat_s%chars(1:lr))
 DO i = 1,ncopies 
    repeat_s%chars(1+(i-1)*ls:i*ls) = string%chars 
 ENDDO 
ENDFUNCTION repeat_s 

 ELEMENTAL FUNCTION s_eq_s(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
  LOGICAL                         :: s_eq_s 
  INTEGER                         :: la,lb 
  la = LEN(string_a); lb = LEN(string_b)
  IF (la > lb) THEN
     s_eq_s = ALL(string_a%chars(1:lb) == string_b%chars) .AND. &
              ALL(string_a%chars(lb+1:la) == blank)
  ELSEIF (la < lb) THEN
     s_eq_s = ALL(string_a%chars == string_b%chars(1:la)) .AND. &
              ALL(blank == string_b%chars(la+1:lb))
  ELSE
     s_eq_s = ALL(string_a%chars == string_b%chars) 
  ENDIF 
 ENDFUNCTION s_eq_s 

 ELEMENTAL FUNCTION s_eq_c(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a 
  CHARACTER(LEN=*),INTENT(IN)     :: string_b 
  LOGICAL                         :: s_eq_c 
  INTEGER                         :: la,lb,ls
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls
    IF( string_a%chars(i) /= string_b(i:i) )THEN
      s_eq_c = .FALSE.; RETURN
    ENDIF
  ENDDO
  IF( la > lb .AND. ANY( string_a%chars(lb+1:la) /= blank ) )THEN
    s_eq_c = .FALSE.; RETURN
  ELSEIF( la < lb .AND. blank /= string_b(la+1:lb) )THEN
    s_eq_c = .FALSE.; RETURN
  ENDIF
  s_eq_c = .TRUE.
 ENDFUNCTION s_eq_c 

 ELEMENTAL FUNCTION c_eq_s(string_a,string_b)
  CHARACTER(LEN=*),INTENT(IN)     :: string_a 
  type(VARYING_STRING),INTENT(IN) :: string_b 
  LOGICAL                         :: c_eq_s 
  INTEGER                         :: la,lb,ls
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls
    IF( string_a(i:i) /= string_b%chars(i) )THEN
      c_eq_s = .FALSE.; RETURN
    ENDIF
  ENDDO
  IF( la > lb .AND. string_a(lb+1:la) /= blank )THEN
    c_eq_s = .FALSE.; RETURN
  ELSEIF( la < lb .AND. ANY( blank /= string_b%chars(la+1:lb) ) )THEN
    c_eq_s = .FALSE.; RETURN
  ENDIF
  c_eq_s = .TRUE.
 ENDFUNCTION c_eq_s 

 ELEMENTAL FUNCTION s_ne_s(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
  LOGICAL                         :: s_ne_s 
  INTEGER                         :: la,lb 
  la = LEN(string_a); lb = LEN(string_b)
  IF (la > lb) THEN
     s_ne_s = ANY(string_a%chars(1:lb) /= string_b%chars) .OR. &
              ANY(string_a%chars(lb+1:la) /= blank)
  ELSEIF (la < lb) THEN
     s_ne_s = ANY(string_a%chars /= string_b%chars(1:la)) .OR. &
              ANY(blank /= string_b%chars(la+1:lb))
  ELSE
     s_ne_s = ANY(string_a%chars /= string_b%chars)
  ENDIF 
 ENDFUNCTION s_ne_s 

 ELEMENTAL FUNCTION s_ne_c(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a 
  CHARACTER(LEN=*),INTENT(IN)     :: string_b 
  LOGICAL                         :: s_ne_c 
  INTEGER                         :: la,lb,ls
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls
    IF( string_a%chars(i) /= string_b(i:i) )THEN
      s_ne_c = .TRUE.; RETURN
    ENDIF
  ENDDO
  IF( la > lb .AND. ANY( string_a%chars(lb+1:la) /= blank ) )THEN
    s_ne_c = .TRUE.; RETURN
  ELSEIF( la < lb .AND. blank /= string_b(la+1:lb) )THEN
    s_ne_c = .TRUE.; RETURN
  ENDIF
  s_ne_c = .FALSE.
 ENDFUNCTION s_ne_c 

 ELEMENTAL FUNCTION c_ne_s(string_a,string_b)
  CHARACTER(LEN=*),INTENT(IN)     :: string_a 
  type(VARYING_STRING),INTENT(IN) :: string_b 
  LOGICAL                         :: c_ne_s 
  INTEGER                         :: la,lb,ls
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls
    IF( string_a(i:i) /= string_b%chars(i) )THEN
      c_ne_s = .TRUE.; RETURN
    ENDIF
  ENDDO
  IF( la > lb .AND. string_a(lb+1:la) /= blank )THEN
    c_ne_s = .TRUE.; RETURN
  ELSEIF( la < lb .AND. ANY( blank /= string_b%chars(la+1:lb) ) )THEN
    c_ne_s = .TRUE.; RETURN
  ENDIF
  c_ne_s = .FALSE.
 ENDFUNCTION c_ne_s 

 ELEMENTAL FUNCTION s_lt_s(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
  LOGICAL                         :: s_lt_s 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a%chars(i) < string_b%chars(i) )THEN 
      s_lt_s = .TRUE.; RETURN
    ELSEIF( string_a%chars(i) > string_b%chars(i) )THEN 
      s_lt_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( blank < string_b%chars(i) )THEN
        s_lt_s = .TRUE.; RETURN
      ELSEIF( blank > string_b%chars(i) )THEN
        s_lt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( string_a%chars(i) < blank )THEN
        s_lt_s = .TRUE.; RETURN
      ELSEIF( string_a%chars(i) > blank )THEN
        s_lt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_lt_s = .FALSE.
 ENDFUNCTION s_lt_s 

 ELEMENTAL FUNCTION s_lt_c(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a 
  CHARACTER(LEN=*),INTENT(IN)     :: string_b 
  LOGICAL                         :: s_lt_c 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a%chars(i) < string_b(i:i) )THEN 
      s_lt_c = .TRUE.; RETURN
    ELSEIF( string_a%chars(i) > string_b(i:i) )THEN 
      s_lt_c = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    IF( blank < string_b(la+1:lb) )THEN
      s_lt_c = .TRUE.; RETURN
    ELSEIF( blank > string_b(la+1:lb) )THEN
      s_lt_c = .FALSE.; RETURN
    ENDIF
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( string_a%chars(i) < blank )THEN
        s_lt_c = .TRUE.; RETURN
      ELSEIF( string_a%chars(i) > blank )THEN
        s_lt_c = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_lt_c = .FALSE.
 ENDFUNCTION s_lt_c 

 ELEMENTAL FUNCTION c_lt_s(string_a,string_b)
  CHARACTER(LEN=*),INTENT(IN)     :: string_a 
  type(VARYING_STRING),INTENT(IN) :: string_b 
  LOGICAL                         :: c_lt_s 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a(i:i) < string_b%chars(i) )THEN 
      c_lt_s = .TRUE.; RETURN
    ELSEIF( string_a(i:i) > string_b%chars(i) )THEN 
      c_lt_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( blank < string_b%chars(i) )THEN
        c_lt_s = .TRUE.; RETURN
      ELSEIF( blank > string_b%chars(i) )THEN
        c_lt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    IF( string_a(lb+1:la) < blank )THEN
      c_lt_s = .TRUE.; RETURN
    ELSEIF( string_a(lb+1:la) > blank )THEN
      c_lt_s = .FALSE.; RETURN
    ENDIF
  ENDIF
  c_lt_s = .FALSE.
 ENDFUNCTION c_lt_s 

 ELEMENTAL FUNCTION s_le_s(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
  LOGICAL                         :: s_le_s 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a%chars(i) < string_b%chars(i) )THEN 
      s_le_s = .TRUE.; RETURN
    ELSEIF( string_a%chars(i) > string_b%chars(i) )THEN 
      s_le_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( blank < string_b%chars(i) )THEN
        s_le_s = .TRUE.; RETURN
      ELSEIF( blank > string_b%chars(i) )THEN
        s_le_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( string_a%chars(i) < blank )THEN
        s_le_s = .TRUE.; RETURN
      ELSEIF( string_a%chars(i) > blank )THEN
        s_le_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_le_s = .TRUE.
 ENDFUNCTION s_le_s 

 ELEMENTAL FUNCTION s_le_c(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a 
  CHARACTER(LEN=*),INTENT(IN)     :: string_b 
  LOGICAL                         :: s_le_c 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a%chars(i) < string_b(i:i) )THEN 
      s_le_c = .TRUE.; RETURN
    ELSEIF( string_a%chars(i) > string_b(i:i) )THEN 
      s_le_c = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    IF( blank < string_b(la+1:lb) )THEN
      s_le_c = .TRUE.; RETURN
    ELSEIF( blank > string_b(la+1:lb) )THEN
      s_le_c = .FALSE.; RETURN
    ENDIF
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( string_a%chars(i) < blank )THEN
        s_le_c = .TRUE.; RETURN
      ELSEIF( string_a%chars(i) > blank )THEN
        s_le_c = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_le_c = .TRUE.
 ENDFUNCTION s_le_c 

 ELEMENTAL FUNCTION c_le_s(string_a,string_b)
  CHARACTER(LEN=*),INTENT(IN)     :: string_a 
  type(VARYING_STRING),INTENT(IN) :: string_b 
  LOGICAL                         :: c_le_s 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a(i:i) < string_b%chars(i) )THEN 
      c_le_s = .TRUE.; RETURN
    ELSEIF( string_a(i:i) > string_b%chars(i) )THEN 
      c_le_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( blank < string_b%chars(i) )THEN
        c_le_s = .TRUE.; RETURN
      ELSEIF( blank > string_b%chars(i) )THEN
        c_le_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    IF( string_a(lb+1:la) < blank )THEN
      c_le_s = .TRUE.; RETURN
    ELSEIF( string_a(lb+1:la) > blank )THEN
      c_le_s = .FALSE.; RETURN
    ENDIF
  ENDIF
  c_le_s = .TRUE.
 ENDFUNCTION c_le_s 

 ELEMENTAL FUNCTION s_ge_s(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
  LOGICAL                         :: s_ge_s 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a%chars(i) > string_b%chars(i) )THEN
      s_ge_s = .TRUE.; RETURN
    ELSEIF( string_a%chars(i) < string_b%chars(i) )THEN
      s_ge_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( blank > string_b%chars(i) )THEN
        s_ge_s = .TRUE.; RETURN
      ELSEIF( blank < string_b%chars(i) )THEN
        s_ge_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( string_a%chars(i) > blank )THEN
        s_ge_s = .TRUE.; RETURN
      ELSEIF( string_a%chars(i) < blank )THEN
        s_ge_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_ge_s = .TRUE.
 ENDFUNCTION s_ge_s 

 ELEMENTAL FUNCTION s_ge_c(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a 
  CHARACTER(LEN=*),INTENT(IN)     :: string_b 
  LOGICAL                         :: s_ge_c 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a%chars(i) > string_b(i:i) )THEN
      s_ge_c = .TRUE.; RETURN
    ELSEIF( string_a%chars(i) < string_b(i:i) )THEN
      s_ge_c = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    IF( blank > string_b(la+1:lb) )THEN
      s_ge_c = .TRUE.; RETURN
    ELSEIF( blank < string_b(la+1:lb) )THEN
      s_ge_c = .FALSE.; RETURN
    ENDIF
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( string_a%chars(i) > blank )THEN
        s_ge_c = .TRUE.; RETURN
      ELSEIF( string_a%chars(i) < blank )THEN
        s_ge_c = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_ge_c = .TRUE.
 ENDFUNCTION s_ge_c 

 ELEMENTAL FUNCTION c_ge_s(string_a,string_b)
  CHARACTER(LEN=*),INTENT(IN)     :: string_a 
  type(VARYING_STRING),INTENT(IN) :: string_b 
  LOGICAL                         :: c_ge_s 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a(i:i) > string_b%chars(i) )THEN
      c_ge_s = .TRUE.; RETURN
    ELSEIF( string_a(i:i) < string_b%chars(i) )THEN
      c_ge_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( blank > string_b%chars(i) )THEN
        c_ge_s = .TRUE.; RETURN
      ELSEIF( blank < string_b%chars(i) )THEN
        c_ge_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    IF( string_a(lb+1:la) > blank )THEN
      c_ge_s = .TRUE.; RETURN
    ELSEIF( string_a(lb+1:la) < blank )THEN
      c_ge_s = .FALSE.; RETURN
    ENDIF
  ENDIF
  c_ge_s = .TRUE.
 ENDFUNCTION c_ge_s 

 ELEMENTAL FUNCTION s_gt_s(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
  LOGICAL                         :: s_gt_s 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a%chars(i) > string_b%chars(i) )THEN
      s_gt_s = .TRUE.; RETURN
    ELSEIF( string_a%chars(i) < string_b%chars(i) )THEN
      s_gt_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( blank > string_b%chars(i) )THEN
        s_gt_s = .TRUE.; RETURN
      ELSEIF( blank < string_b%chars(i) )THEN
        s_gt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( string_a%chars(i) > blank )THEN
        s_gt_s = .TRUE.; RETURN
      ELSEIF( string_a%chars(i) < blank )THEN
        s_gt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_gt_s = .FALSE.
 ENDFUNCTION s_gt_s 

 ELEMENTAL FUNCTION s_gt_c(string_a,string_b)
  type(VARYING_STRING),INTENT(IN) :: string_a 
  CHARACTER(LEN=*),INTENT(IN)     :: string_b 
  LOGICAL                         :: s_gt_c 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a%chars(i) > string_b(i:i) )THEN
      s_gt_c = .TRUE.; RETURN
    ELSEIF( string_a%chars(i) < string_b(i:i) )THEN
      s_gt_c = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    IF( blank > string_b(la+1:lb) )THEN
      s_gt_c = .TRUE.; RETURN
    ELSEIF( blank < string_b(la+1:lb) )THEN
      s_gt_c = .FALSE.; RETURN
    ENDIF
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( string_a%chars(i) > blank )THEN
        s_gt_c = .TRUE.; RETURN
      ELSEIF( string_a%chars(i) < blank )THEN
        s_gt_c = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_gt_c = .FALSE.
 ENDFUNCTION s_gt_c 

 ELEMENTAL FUNCTION c_gt_s(string_a,string_b)
  CHARACTER(LEN=*),INTENT(IN)     :: string_a 
  type(VARYING_STRING),INTENT(IN) :: string_b 
  LOGICAL                         :: c_gt_s 
  INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( string_a(i:i) > string_b%chars(i) )THEN
      c_gt_s = .TRUE.; RETURN
    ELSEIF( string_a(i:i) < string_b%chars(i) )THEN
      c_gt_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( blank > string_b%chars(i) )THEN
        c_gt_s = .TRUE.; RETURN
      ELSEIF( blank < string_b%chars(i) )THEN
        c_gt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    IF( string_a(lb+1:la) > blank )THEN
      c_gt_s = .TRUE.; RETURN
    ELSEIF( string_a(lb+1:la) < blank )THEN
      c_gt_s = .FALSE.; RETURN
    ENDIF
  ENDIF
  c_gt_s = .FALSE.
 ENDFUNCTION c_gt_s 

ELEMENTAL FUNCTION s_llt_s(string_a,string_b)
 type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
 LOGICAL                         :: s_llt_s 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LLT(string_a%chars(i),string_b%chars(i)) )THEN
      s_llt_s = .TRUE.; RETURN
    ELSEIF( LGT(string_a%chars(i),string_b%chars(i)) )THEN
      s_llt_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( LLT(blank,string_b%chars(i)) )THEN
        s_llt_s = .TRUE.; RETURN
      ELSEIF( LGT(blank,string_b%chars(i)) )THEN
        s_llt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( LLT(string_a%chars(i),blank) )THEN
        s_llt_s = .TRUE.; RETURN
      ELSEIF( LGT(string_a%chars(i),blank) )THEN
        s_llt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_llt_s = .FALSE.
ENDFUNCTION s_llt_s 

ELEMENTAL FUNCTION s_llt_c(string_a,string_b)
 type(VARYING_STRING),INTENT(IN) :: string_a 
 CHARACTER(LEN=*),INTENT(IN)     :: string_b 
 LOGICAL                         :: s_llt_c 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LLT(string_a%chars(i),string_b(i:i)) )THEN
      s_llt_c = .TRUE.; RETURN
    ELSEIF( LGT(string_a%chars(i),string_b(i:i)) )THEN
      s_llt_c = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    IF( LLT(blank,string_b(la+1:lb)) )THEN
      s_llt_c = .TRUE.; RETURN
    ELSEIF( LGT(blank,string_b(la+1:lb)) )THEN
      s_llt_c = .FALSE.; RETURN
    ENDIF
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( LLT(string_a%chars(i),blank) )THEN
        s_llt_c = .TRUE.; RETURN
      ELSEIF( LGT(string_a%chars(i),blank) )THEN
        s_llt_c = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_llt_c = .FALSE.
ENDFUNCTION s_llt_c 

ELEMENTAL FUNCTION c_llt_s(string_a,string_b)
 CHARACTER(LEN=*),INTENT(IN)     :: string_a
 type(VARYING_STRING),INTENT(IN) :: string_b
 LOGICAL                         :: c_llt_s
 INTEGER                         :: ls,la,lb
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LLT(string_a(i:i),string_b%chars(i)) )THEN
      c_llt_s = .TRUE.; RETURN
    ELSEIF( LGT(string_a(i:i),string_b%chars(i)) )THEN
      c_llt_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( LLT(blank,string_b%chars(i)) )THEN
        c_llt_s = .TRUE.; RETURN
      ELSEIF( LGT(blank,string_b%chars(i)) )THEN
        c_llt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    IF( LLT(string_a(lb+1:la),blank) )THEN
      c_llt_s = .TRUE.; RETURN
    ELSEIF( LGT(string_a(lb+1:la),blank) )THEN
      c_llt_s = .FALSE.; RETURN
    ENDIF
  ENDIF
  c_llt_s = .FALSE.
ENDFUNCTION c_llt_s 

ELEMENTAL FUNCTION s_lle_s(string_a,string_b)
 type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
 LOGICAL                         :: s_lle_s 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LLT(string_a%chars(i),string_b%chars(i)) )THEN
      s_lle_s = .TRUE.; RETURN
    ELSEIF( LGT(string_a%chars(i),string_b%chars(i)) )THEN
      s_lle_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( LLT(blank,string_b%chars(i)) )THEN
        s_lle_s = .TRUE.; RETURN
      ELSEIF( LGT(blank,string_b%chars(i)) )THEN
        s_lle_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( LLT(string_a%chars(i),blank) )THEN
        s_lle_s = .TRUE.; RETURN
      ELSEIF( LGT(string_a%chars(i),blank) )THEN
        s_lle_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_lle_s = .TRUE.
ENDFUNCTION s_lle_s 

ELEMENTAL FUNCTION s_lle_c(string_a,string_b)
 type(VARYING_STRING),INTENT(IN) :: string_a 
 CHARACTER(LEN=*),INTENT(IN)     :: string_b 
 LOGICAL                         :: s_lle_c 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LLT(string_a%chars(i),string_b(i:i)) )THEN
      s_lle_c = .TRUE.; RETURN
    ELSEIF( LGT(string_a%chars(i),string_b(i:i)) )THEN
      s_lle_c = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    IF( LLT(blank,string_b(la+1:lb)) )THEN
      s_lle_c = .TRUE.; RETURN
    ELSEIF( LGT(blank,string_b(la+1:lb)) )THEN
      s_lle_c = .FALSE.; RETURN
    ENDIF
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( LLT(string_a%chars(i),blank) )THEN
        s_lle_c = .TRUE.; RETURN
      ELSEIF( LGT(string_a%chars(i),blank) )THEN
        s_lle_c = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_lle_c = .TRUE.
ENDFUNCTION s_lle_c 

ELEMENTAL FUNCTION c_lle_s(string_a,string_b)
 CHARACTER(LEN=*),INTENT(IN)     :: string_a 
 type(VARYING_STRING),INTENT(IN) :: string_b 
 LOGICAL                         :: c_lle_s 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LLT(string_a(i:i),string_b%chars(i)) )THEN
      c_lle_s = .TRUE.; RETURN
    ELSEIF( LGT(string_a(i:i),string_b%chars(i)) )THEN
      c_lle_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( LLT(blank,string_b%chars(i)) )THEN
        c_lle_s = .TRUE.; RETURN
      ELSEIF( LGT(blank,string_b%chars(i)) )THEN
        c_lle_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    IF( LLT(string_a(lb+1:la),blank) )THEN
      c_lle_s = .TRUE.; RETURN
    ELSEIF( LGT(string_a(lb+1:la),blank) )THEN
      c_lle_s = .FALSE.; RETURN
    ENDIF
  ENDIF
  c_lle_s = .TRUE.
ENDFUNCTION c_lle_s 

ELEMENTAL FUNCTION s_lge_s(string_a,string_b)
 type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
 LOGICAL                         :: s_lge_s 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LGT(string_a%chars(i),string_b%chars(i)) )THEN
      s_lge_s = .TRUE.; RETURN
    ELSEIF( LLT(string_a%chars(i),string_b%chars(i)) )THEN
      s_lge_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( LGT(blank,string_b%chars(i)) )THEN
        s_lge_s = .TRUE.; RETURN
      ELSEIF( LLT(blank,string_b%chars(i)) )THEN
        s_lge_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( LGT(string_a%chars(i),blank) )THEN
        s_lge_s = .TRUE.; RETURN
      ELSEIF( LLT(string_a%chars(i),blank) )THEN
        s_lge_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_lge_s = .TRUE.
ENDFUNCTION s_lge_s 

ELEMENTAL FUNCTION s_lge_c(string_a,string_b)
 type(VARYING_STRING),INTENT(IN) :: string_a 
 CHARACTER(LEN=*),INTENT(IN)     :: string_b 
 LOGICAL                         :: s_lge_c 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LGT(string_a%chars(i),string_b(i:i)) )THEN
      s_lge_c = .TRUE.; RETURN
    ELSEIF( LLT(string_a%chars(i),string_b(i:i)) )THEN
      s_lge_c = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    IF( LGT(blank,string_b(la+1:lb)) )THEN
      s_lge_c = .TRUE.; RETURN
    ELSEIF( LLT(blank,string_b(la+1:lb)) )THEN
      s_lge_c = .FALSE.; RETURN
    ENDIF
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( LGT(string_a%chars(i),blank) )THEN
        s_lge_c = .TRUE.; RETURN
      ELSEIF( LLT(string_a%chars(i),blank) )THEN
        s_lge_c = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_lge_c = .TRUE.
ENDFUNCTION s_lge_c 

ELEMENTAL FUNCTION c_lge_s(string_a,string_b)
 CHARACTER(LEN=*),INTENT(IN)     :: string_a 
 type(VARYING_STRING),INTENT(IN) :: string_b 
 LOGICAL                         :: c_lge_s 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LGT(string_a(i:i),string_b%chars(i)) )THEN
      c_lge_s = .TRUE.; RETURN
    ELSEIF( LLT(string_a(i:i),string_b%chars(i)) )THEN
      c_lge_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( LGT(blank,string_b%chars(i)) )THEN
        c_lge_s = .TRUE.; RETURN
      ELSEIF( LLT(blank,string_b%chars(i)) )THEN
        c_lge_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    IF( LGT(string_a(lb+1:la),blank) )THEN
      c_lge_s = .TRUE.; RETURN
    ELSEIF( LLT(string_a(lb+1:la),blank) )THEN
      c_lge_s = .FALSE.; RETURN
    ENDIF
  ENDIF
  c_lge_s = .TRUE.
ENDFUNCTION c_lge_s 

ELEMENTAL FUNCTION s_lgt_s(string_a,string_b)
 type(VARYING_STRING),INTENT(IN) :: string_a,string_b 
 LOGICAL                         :: s_lgt_s 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LGT(string_a%chars(i),string_b%chars(i)) )THEN
      s_lgt_s = .TRUE.; RETURN
    ELSEIF( LLT(string_a%chars(i),string_b%chars(i)) )THEN
      s_lgt_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( LGT(blank,string_b%chars(i)) )THEN
        s_lgt_s = .TRUE.; RETURN
      ELSEIF( LLT(blank,string_b%chars(i)) )THEN
        s_lgt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( LGT(string_a%chars(i),blank) )THEN
        s_lgt_s = .TRUE.; RETURN
      ELSEIF( LLT(string_a%chars(i),blank) )THEN
        s_lgt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_lgt_s = .FALSE.
ENDFUNCTION s_lgt_s 

ELEMENTAL FUNCTION s_lgt_c(string_a,string_b)
 type(VARYING_STRING),INTENT(IN) :: string_a 
 CHARACTER(LEN=*),INTENT(IN)     :: string_b 
 LOGICAL                         :: s_lgt_c 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LGT(string_a%chars(i),string_b(i:i)) )THEN
      s_lgt_c = .TRUE.; RETURN
    ELSEIF( LLT(string_a%chars(i),string_b(i:i)) )THEN
      s_lgt_c = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    IF( LGT(blank,string_b(la+1:lb)) )THEN
      s_lgt_c = .TRUE.; RETURN
    ELSEIF( LLT(blank,string_b(la+1:lb)) )THEN
      s_lgt_c = .FALSE.; RETURN
    ENDIF
  ELSEIF( la > lb )THEN
    DO i = lb+1,la
      IF( LGT(string_a%chars(i),blank) )THEN
        s_lgt_c = .TRUE.; RETURN
      ELSEIF( LLT(string_a%chars(i),blank) )THEN
        s_lgt_c = .FALSE.; RETURN
      ENDIF
    ENDDO
  ENDIF
  s_lgt_c = .FALSE.
ENDFUNCTION s_lgt_c 

ELEMENTAL FUNCTION c_lgt_s(string_a,string_b)
 CHARACTER(LEN=*),INTENT(IN)     :: string_a 
 type(VARYING_STRING),INTENT(IN) :: string_b 
 LOGICAL                         :: c_lgt_s 
 INTEGER                         :: ls,la,lb 
  la = LEN(string_a); lb = LEN(string_b); ls = MIN(la,lb)
  DO i = 1,ls 
    IF( LGT(string_a(i:i),string_b%chars(i)) )THEN
      c_lgt_s = .TRUE.; RETURN
    ELSEIF( LLT(string_a(i:i),string_b%chars(i)) )THEN
      c_lgt_s = .FALSE.; RETURN
    ENDIF 
  ENDDO 
  IF( la < lb )THEN
    DO i = la+1,lb
      IF( LGT(blank,string_b%chars(i)) )THEN
        c_lgt_s = .TRUE.; RETURN
      ELSEIF( LLT(blank,string_b%chars(i)) )THEN
        c_lgt_s = .FALSE.; RETURN
      ENDIF
    ENDDO
  ELSEIF( la > lb )THEN
    IF( LGT(string_a(lb+1:la),blank) )THEN
      c_lgt_s = .TRUE.; RETURN
    ELSEIF( LLT(string_a(lb+1:la),blank) )THEN
      c_lgt_s = .FALSE.; RETURN
    ENDIF
  ENDIF
  c_lgt_s = .FALSE.
ENDFUNCTION c_lgt_s 

SUBROUTINE get_d_eor(string,maxlen,iostat)
 type(VARYING_STRING),INTENT(OUT) :: string
 INTEGER,INTENT(IN),OPTIONAL      :: maxlen
 INTEGER,INTENT(OUT),OPTIONAL     :: iostat
 CHARACTER(LEN=80) :: buffer
 INTEGER           :: ist,nch,toread,nb
 IF(PRESENT(maxlen))THEN
   toread=maxlen
 ELSE
   toread=HUGE(1)
 ENDIF
 string = ""
 DO
   IF(toread <= 0)EXIT
   nb=MIN(80,toread)
   READ(*,FMT='(A)',ADVANCE='NO',EOR=9999,SIZE=nch,IOSTAT=ist) buffer(1:nb)
   IF( ist /= 0 )THEN 
     IF(PRESENT(iostat)) THEN 
       iostat=ist 
       RETURN 
     ELSE 
       WRITE(*,*) " Error No.",ist, &
                  " during READ_STRING of varying string on default unit"
       STOP 
     ENDIF 
   ENDIF 
   string = string //buffer(1:nb)
   toread = toread - nb
 ENDDO
 IF(PRESENT(iostat)) iostat = 0
 RETURN
 9999 string = string //buffer(1:nch) 
 IF(PRESENT(iostat)) iostat = ist
ENDSUBROUTINE get_d_eor

SUBROUTINE get_u_eor(unit,string,maxlen,iostat)
 INTEGER,INTENT(IN)               :: unit
 type(VARYING_STRING),INTENT(OUT) :: string
 INTEGER,INTENT(IN),OPTIONAL      :: maxlen
 INTEGER,INTENT(OUT),OPTIONAL     :: iostat
 CHARACTER(LEN=80) :: buffer
 INTEGER           :: ist,nch,toread,nb
 IF(PRESENT(maxlen))THEN
   toread=maxlen
 ELSE
   toread=HUGE(1)
 ENDIF
 string=""
 DO
   IF(toread <= 0)EXIT
   nb=MIN(80,toread)
   READ(unit,FMT='(A)',ADVANCE='NO',EOR=9999,SIZE=nch,IOSTAT=ist) buffer(1:nb)
   IF( ist /= 0 )THEN 
     IF(PRESENT(iostat)) THEN 
       iostat=ist 
       RETURN 
     ELSE 
       WRITE(*,*) " Error No.",ist, &
                  " during READ_STRING of varying string on UNIT ",unit
       STOP 
     ENDIF 
   ENDIF 
   string = string //buffer(1:nb)
   toread = toread - nb
 ENDDO
 IF(PRESENT(iostat)) iostat = 0
 RETURN
 9999 string = string //buffer(1:nch) 
 IF(PRESENT(iostat)) iostat = ist
ENDSUBROUTINE get_u_eor

SUBROUTINE get_d_tset_s(string,set,separator,maxlen,iostat)
 type(VARYING_STRING),INTENT(OUT) :: string
 type(VARYING_STRING),INTENT(IN)  :: set
 type(VARYING_STRING),INTENT(OUT),OPTIONAL :: separator
 INTEGER,INTENT(IN),OPTIONAL      :: maxlen
 INTEGER,INTENT(OUT),OPTIONAL     :: iostat
 CHARACTER :: buffer
 INTEGER   :: ist,toread,lenset
 lenset = LEN(set)
 IF(PRESENT(maxlen))THEN
   toread=maxlen
 ELSE
   toread=HUGE(1)
 ENDIF
 string = ""
 IF(PRESENT(separator)) separator=""
 readchar:DO
   IF(toread <= 0)EXIT readchar
   READ(*,FMT='(A)',ADVANCE='NO',EOR=9999,IOSTAT=ist) buffer
   IF( ist /= 0 )THEN 
     IF(PRESENT(iostat)) THEN 
       iostat=ist 
       RETURN 
     ELSE 
       WRITE(*,*) " Error No.",ist, &
                  " during GET of varying string on default unit"
       STOP 
     ENDIF 
   ENDIF 
     DO j = 1,lenset
       IF(buffer == set%chars(j))THEN
         IF(PRESENT(separator)) separator=buffer
         EXIT readchar
       ENDIF
     ENDDO
   string = string//buffer
   toread = toread - 1
  ENDDO readchar
 IF(PRESENT(iostat)) iostat = 0
 RETURN
 9999 CONTINUE
 IF(PRESENT(iostat)) iostat = ist
ENDSUBROUTINE get_d_tset_s

SUBROUTINE get_u_tset_s(unit,string,set,separator,maxlen,iostat)
 INTEGER,INTENT(IN)               :: unit
 type(VARYING_STRING),INTENT(OUT) :: string
 type(VARYING_STRING),INTENT(IN)  :: set
 type(VARYING_STRING),INTENT(OUT),OPTIONAL :: separator
 INTEGER,INTENT(IN),OPTIONAL      :: maxlen
 INTEGER,INTENT(OUT),OPTIONAL     :: iostat
 CHARACTER :: buffer
 INTEGER   :: ist,toread,lenset
 lenset = LEN(set)
 IF(PRESENT(maxlen))THEN
   toread=maxlen
 ELSE
   toread=HUGE(1)
 ENDIF
 string = ""
 IF(PRESENT(separator)) separator=""
 readchar:DO
   IF(toread <= 0)EXIT readchar
   READ(unit,FMT='(A)',ADVANCE='NO',EOR=9999,IOSTAT=ist) buffer
   IF( ist /= 0 )THEN 
     IF(PRESENT(iostat)) THEN 
       iostat=ist 
       RETURN 
     ELSE 
       WRITE(*,*) " Error No.",ist, &
                  " during GET of varying string on unit ",unit
       STOP 
     ENDIF 
   ENDIF 
     DO j = 1,lenset
       IF(buffer == set%chars(j))THEN
         IF(PRESENT(separator)) separator=buffer
         EXIT readchar
       ENDIF
     ENDDO
   string = string//buffer
   toread = toread - 1
 ENDDO readchar
 IF(PRESENT(iostat)) iostat = 0
 RETURN
 9999 CONTINUE
 IF(PRESENT(iostat)) iostat = ist
ENDSUBROUTINE get_u_tset_s

SUBROUTINE get_d_tset_c(string,set,separator,maxlen,iostat)
 type(VARYING_STRING),INTENT(OUT) :: string
 CHARACTER(LEN=*),INTENT(IN)      :: set
 type(VARYING_STRING),INTENT(OUT),OPTIONAL :: separator
 INTEGER,INTENT(IN),OPTIONAL      :: maxlen
 INTEGER,INTENT(OUT),OPTIONAL     :: iostat
 CHARACTER :: buffer
 INTEGER   :: ist,toread,lenset
 lenset = LEN(set)
 IF(PRESENT(maxlen))THEN
   toread=maxlen
 ELSE
   toread=HUGE(1)
 ENDIF
 string = ""
 IF(PRESENT(separator)) separator=""
 readchar:DO
   IF(toread <= 0)EXIT readchar
   READ(*,FMT='(A)',ADVANCE='NO',EOR=9999,IOSTAT=ist) buffer
   IF( ist /= 0 )THEN 
     IF(PRESENT(iostat)) THEN 
       iostat=ist 
       RETURN 
     ELSE 
       WRITE(*,*) " Error No.",ist, &
                  " during GET of varying string on default unit"
       STOP 
     ENDIF 
   ENDIF 
     DO j = 1,lenset
       IF(buffer == set(j:j))THEN
         IF(PRESENT(separator)) separator=buffer
         EXIT readchar
       ENDIF
     ENDDO
   string = string//buffer
   toread = toread - 1
 ENDDO readchar
 IF(PRESENT(iostat)) iostat = 0
 RETURN
 9999 CONTINUE
 IF(PRESENT(iostat)) iostat = ist
ENDSUBROUTINE get_d_tset_c

SUBROUTINE get_u_tset_c(unit,string,set,separator,maxlen,iostat)
 INTEGER,INTENT(IN)               :: unit
 type(VARYING_STRING),INTENT(OUT) :: string
 CHARACTER(LEN=*),INTENT(IN)      :: set
 type(VARYING_STRING),INTENT(OUT),OPTIONAL :: separator
 INTEGER,INTENT(IN),OPTIONAL      :: maxlen
 INTEGER,INTENT(OUT),OPTIONAL     :: iostat
 CHARACTER :: buffer
 INTEGER   :: ist,toread,lenset
 lenset = LEN(set)
 IF(PRESENT(maxlen))THEN
   toread=maxlen
 ELSE
   toread=HUGE(1)
 ENDIF
 string = ""
 IF(PRESENT(separator)) separator=""
 readchar:DO
   IF(toread <= 0)EXIT readchar
   READ(unit,FMT='(A)',ADVANCE='NO',EOR=9999,IOSTAT=ist) buffer
   IF( ist /= 0 )THEN 
     IF(PRESENT(iostat)) THEN 
       iostat=ist 
       RETURN 
     ELSE 
       WRITE(*,*) " Error No.",ist, &
                  " during GET of varying string on unit ",unit
       STOP 
     ENDIF 
   ENDIF 
     DO j = 1,lenset
       IF(buffer == set(j:j))THEN
         IF(PRESENT(separator)) separator=buffer
         EXIT readchar
       ENDIF
     ENDDO
   string = string//buffer
   toread = toread - 1
 ENDDO readchar
 IF(PRESENT(iostat)) iostat = 0
 RETURN
 9999 CONTINUE
 IF(PRESENT(iostat)) iostat = ist
ENDSUBROUTINE get_u_tset_c

SUBROUTINE put_d_s(string,iostat)
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(OUT),OPTIONAL    :: iostat
 INTEGER           :: ist
 WRITE(*,FMT='(A)',ADVANCE='NO',IOSTAT=ist) CHAR(string)
 IF( ist /= 0 )THEN
   IF(PRESENT(iostat))THEN
     iostat = ist
     RETURN
   ELSE
     WRITE(*,*) " Error No.",ist, &
                "  during PUT of varying string on default unit"
     STOP
   ENDIF
 ENDIF
 IF(PRESENT(iostat)) iostat=0
ENDSUBROUTINE put_d_s

SUBROUTINE put_u_s(unit,string,iostat)
 INTEGER,INTENT(IN)              :: unit
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(OUT),OPTIONAL    :: iostat
  INTEGER :: ist
  WRITE(unit,FMT='(A)',ADVANCE='NO',IOSTAT=ist) CHAR(string)
  IF( ist /= 0 )THEN
   IF(PRESENT(iostat))THEN
    iostat = ist
    RETURN
   ELSE
    WRITE(*,*) " Error No.",ist, &
               "  during PUT of varying string on UNIT ",unit
    STOP
   ENDIF
  ENDIF
 IF(PRESENT(iostat)) iostat=0
ENDSUBROUTINE put_u_s

SUBROUTINE put_d_c(string,iostat)
 CHARACTER(LEN=*),INTENT(IN)     :: string
 INTEGER,INTENT(OUT),OPTIONAL    :: iostat
 INTEGER :: ist
 WRITE(*,FMT='(A)',ADVANCE='NO',IOSTAT=ist) string
 IF( ist /= 0 )THEN
  IF(PRESENT(iostat))THEN
   iostat = ist
   RETURN
  ELSE
   WRITE(*,*) " Error No.",ist, &
              " during PUT of character on default unit"
   STOP
  ENDIF
 ENDIF
 IF(PRESENT(iostat)) iostat=0
ENDSUBROUTINE put_d_c

SUBROUTINE put_u_c(unit,string,iostat)
 INTEGER,INTENT(IN)              :: unit
 CHARACTER(LEN=*),INTENT(IN)     :: string
 INTEGER,INTENT(OUT),OPTIONAL    :: iostat
 INTEGER :: ist
 WRITE(unit,FMT='(A)',ADVANCE='NO',IOSTAT=ist) string
 IF( ist /= 0 )THEN
  IF(PRESENT(iostat))THEN
   iostat = ist
   RETURN
  ELSE
   WRITE(*,*) " Error No.",ist," during PUT of character on UNIT ",unit
   STOP
  ENDIF
 ENDIF
 IF(PRESENT(iostat)) iostat=0
ENDSUBROUTINE put_u_c

SUBROUTINE putline_d_s(string,iostat)
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(OUT),OPTIONAL    :: iostat
 INTEGER           :: ist
  WRITE(*,FMT='(A,/)',ADVANCE='NO',IOSTAT=ist) CHAR(string)
  IF( ist /= 0 )THEN
   IF(PRESENT(iostat))THEN
    iostat = ist; RETURN
   ELSE
    WRITE(*,*) " Error No.",ist, &
               " during PUT_LINE of varying string on default unit"
    STOP
   ENDIF
  ENDIF
 IF(PRESENT(iostat)) iostat=0
ENDSUBROUTINE putline_d_s

SUBROUTINE putline_u_s(unit,string,iostat)
 INTEGER,INTENT(IN)              :: unit
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(OUT),OPTIONAL    :: iostat
 INTEGER  :: ist
  WRITE(unit,FMT='(A,/)',ADVANCE='NO',IOSTAT=ist) CHAR(string)
  IF( ist /= 0 )THEN
   IF(PRESENT(iostat))THEN
    iostat = ist; RETURN
   ELSE
    WRITE(*,*) " Error No.",ist, &
               " during PUT_LINE of varying string on UNIT",unit
    STOP
   ENDIF
  ENDIF
 IF(PRESENT(iostat)) iostat=0
ENDSUBROUTINE putline_u_s

SUBROUTINE putline_d_c(string,iostat)
 CHARACTER(LEN=*),INTENT(IN)     :: string
 INTEGER,INTENT(OUT),OPTIONAL    :: iostat
 INTEGER :: ist
 WRITE(*,FMT='(A,/)',ADVANCE='NO',IOSTAT=ist) string
 IF(PRESENT(iostat))THEN
  iostat = ist
  RETURN
 ELSEIF( ist /= 0 )THEN
  WRITE(*,*) " Error No.",ist, &
              " during PUT_LINE of character on default unit"
  STOP
 ENDIF
ENDSUBROUTINE putline_d_c

SUBROUTINE putline_u_c(unit,string,iostat)
 INTEGER,INTENT(IN)              :: unit
 CHARACTER(LEN=*),INTENT(IN)     :: string
 INTEGER,INTENT(OUT),OPTIONAL    :: iostat
 INTEGER :: ist
 WRITE(unit,FMT='(A,/)',ADVANCE='NO',IOSTAT=ist) string
 IF(PRESENT(iostat))THEN
  iostat = ist
  RETURN
 ELSEIF( ist /= 0 )THEN
  WRITE(*,*) " Error No.",ist, &
              " during WRITE_LINE of character on UNIT",unit
  STOP
 ENDIF
ENDSUBROUTINE putline_u_c

 ELEMENTAL FUNCTION insert_ss(string,start,substring)
  type(VARYING_STRING)            :: insert_ss
  type(VARYING_STRING),INTENT(IN) :: string
  INTEGER,INTENT(IN)              :: start
  type(VARYING_STRING),INTENT(IN) :: substring
  CHARACTER,POINTER,DIMENSION(:) :: work 
  INTEGER                        :: ip,is,lsub,ls 
  lsub = LEN(substring); ls = LEN(string)
  is = MAX(start,1) 
  ip = MIN(ls+1,is) 
  ALLOCATE(work(1:lsub+ls))
  work(1:ip-1) = string%chars(1:ip-1) 
  work(ip:ip+lsub-1) =substring%chars
  work(ip+lsub:lsub+ls) = string%chars(ip:ls)
  insert_ss%chars => work
 ENDFUNCTION insert_ss

 ELEMENTAL FUNCTION insert_sc(string,start,substring)
  type(VARYING_STRING)            :: insert_sc
  type(VARYING_STRING),INTENT(IN) :: string
  INTEGER,INTENT(IN)              :: start
  CHARACTER(LEN=*),INTENT(IN) :: substring
  CHARACTER,POINTER,DIMENSION(:) :: work 
  INTEGER                        :: ip,is,lsub,ls 
  lsub = LEN(substring); ls = LEN(string)
  is = MAX(start,1) 
  ip = MIN(ls+1,is) 
  ALLOCATE(work(1:lsub+ls))
  work(1:ip-1) = string%chars(1:ip-1) 
  DO i = 1,lsub 
   work(ip-1+i) = substring(i:i) 
  ENDDO 
  work(ip+lsub:lsub+ls) = string%chars(ip:ls)
  insert_sc%chars => work
 ENDFUNCTION insert_sc

 ELEMENTAL FUNCTION insert_cs(string,start,substring)
  type(VARYING_STRING)            :: insert_cs
  CHARACTER(LEN=*),INTENT(IN)     :: string
  INTEGER,INTENT(IN)              :: start
  type(VARYING_STRING),INTENT(IN) :: substring
  CHARACTER,POINTER,DIMENSION(:) :: work 
  INTEGER                        :: ip,is,lsub,ls 
  lsub = LEN(substring); ls = LEN(string)
  is = MAX(start,1) 
  ip = MIN(ls+1,is) 
  ALLOCATE(work(1:lsub+ls))
  DO i=1,ip-1
    work(i) = string(i:i)
  ENDDO
  work(ip:ip+lsub-1) =substring%chars
  DO i=ip,ls
    work(i+lsub) = string(i:i)
  ENDDO
  insert_cs%chars => work
 ENDFUNCTION insert_cs

 ELEMENTAL FUNCTION insert_cc(string,start,substring)
  type(VARYING_STRING)        :: insert_cc
  CHARACTER(LEN=*),INTENT(IN) :: string
  INTEGER,INTENT(IN)          :: start
  CHARACTER(LEN=*),INTENT(IN) :: substring
  CHARACTER,POINTER,DIMENSION(:) :: work 
  INTEGER                        :: ip,is,lsub,ls 
  lsub = LEN(substring); ls = LEN(string)
  is = MAX(start,1) 
  ip = MIN(ls+1,is) 
  ALLOCATE(work(1:lsub+ls))
  DO i=1,ip-1
    work(i) = string(i:i)
  ENDDO
  DO i = 1,lsub 
   work(ip-1+i) = substring(i:i) 
  ENDDO 
  DO i=ip,ls
    work(i+lsub) = string(i:i)
  ENDDO
  insert_cc%chars => work
 ENDFUNCTION insert_cc

 ELEMENTAL FUNCTION replace_ss(string,start,substring)
 type(VARYING_STRING)            :: replace_ss
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(IN)              :: start
 type(VARYING_STRING),INTENT(IN) :: substring
 CHARACTER,POINTER,DIMENSION(:) :: work
 INTEGER                        :: ip,is,nw,lsub,ls
 lsub = LEN(substring); ls = LEN(string)
 is = MAX(start,1)
 ip = MIN(ls+1,is)
 nw = MAX(ls,ip+lsub-1)
 ALLOCATE(work(1:nw))
 work(1:ip-1) = string%chars(1:ip-1)
 work(ip:ip+lsub-1) = substring%chars
 work(ip+lsub:nw) = string%chars(ip+lsub:ls)
 replace_ss%chars => work
ENDFUNCTION replace_ss

 ELEMENTAL FUNCTION replace_ss_sf(string,start,finish,substring)
 type(VARYING_STRING)            :: replace_ss_sf
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(IN)              :: start,finish
 type(VARYING_STRING),INTENT(IN) :: substring
 CHARACTER,POINTER,DIMENSION(:) :: work
 INTEGER                        :: ip,is,if,nw,lsub,ls
 lsub = LEN(substring); ls = LEN(string)
 is = MAX(start,1)
 ip = MIN(ls+1,is)
 if = MAX(ip-1,MIN(finish,ls))
 nw = lsub + ls - if+ip-1
 ALLOCATE(work(1:nw))
 work(1:ip-1) = string%chars(1:ip-1)
 work(ip:ip+lsub-1) = substring%chars
 work(ip+lsub:nw) = string%chars(if+1:ls)
 replace_ss_sf%chars => work
ENDFUNCTION replace_ss_sf

ELEMENTAL FUNCTION replace_sc(string,start,substring)
 type(VARYING_STRING)            :: replace_sc
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(IN)              :: start
 CHARACTER(LEN=*),INTENT(IN)     :: substring
 CHARACTER,POINTER,DIMENSION(:) :: work
 INTEGER                        :: ip,is,nw,lsub,ls
 lsub = LEN(substring); ls = LEN(string)
 is = MAX(start,1)
 ip = MIN(ls+1,is)
 nw = MAX(ls,ip+lsub-1)
 ALLOCATE(work(1:nw))
 work(1:ip-1) = string%chars(1:ip-1)
 DO i = 1,lsub
   work(ip-1+i) = substring(i:i)
 ENDDO
 work(ip+lsub:nw) = string%chars(ip+lsub:ls)
 replace_sc%chars => work
ENDFUNCTION replace_sc

ELEMENTAL FUNCTION replace_sc_sf(string,start,finish,substring)
 type(VARYING_STRING)            :: replace_sc_sf
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(IN)              :: start,finish
 CHARACTER(LEN=*),INTENT(IN)     :: substring
 CHARACTER,POINTER,DIMENSION(:) :: work
 INTEGER                        :: ip,is,if,nw,lsub,ls
 lsub = LEN(substring); ls = LEN(string)
 is = MAX(start,1)
 ip = MIN(ls+1,is)
 if = MAX(ip-1,MIN(finish,ls))
 nw = lsub + ls - if+ip-1
 ALLOCATE(work(1:nw))
 work(1:ip-1) = string%chars(1:ip-1)
 DO i = 1,lsub
   work(ip-1+i) = substring(i:i)
 ENDDO
 work(ip+lsub:nw) = string%chars(if+1:ls)
 replace_sc_sf%chars => work
ENDFUNCTION replace_sc_sf

ELEMENTAL FUNCTION replace_cs(string,start,substring)
 type(VARYING_STRING)            :: replace_cs
 CHARACTER(LEN=*),INTENT(IN)     :: string
 INTEGER,INTENT(IN)              :: start
 type(VARYING_STRING),INTENT(IN) :: substring
 CHARACTER,POINTER,DIMENSION(:) :: work
 INTEGER                        :: ip,is,nw,lsub,ls
 lsub = LEN(substring); ls = LEN(string)
 is = MAX(start,1)
 ip = MIN(ls+1,is)
 nw = MAX(ls,ip+lsub-1)
 ALLOCATE(work(1:nw))
 DO i=1,ip-1
   work(i) = string(i:i)
 ENDDO
 work(ip:ip+lsub-1) = substring%chars
 DO i=ip+lsub,nw
   work(i) = string(i:i)
 ENDDO
 replace_cs%chars => work
ENDFUNCTION replace_cs

ELEMENTAL FUNCTION replace_cs_sf(string,start,finish,substring)
 type(VARYING_STRING)            :: replace_cs_sf
 CHARACTER(LEN=*),INTENT(IN)     :: string
 INTEGER,INTENT(IN)              :: start,finish
 type(VARYING_STRING),INTENT(IN) :: substring
 CHARACTER,POINTER,DIMENSION(:) :: work
 INTEGER                        :: ip,is,if,nw,lsub,ls
 lsub = LEN(substring); ls = LEN(string)
 is = MAX(start,1)
 ip = MIN(ls+1,is)
 if = MAX(ip-1,MIN(finish,ls))
 nw = lsub + ls - if+ip-1
 ALLOCATE(work(1:nw))
 DO i=1,ip-1
   work(i) = string(i:i)
 ENDDO
 work(ip:ip+lsub-1) = substring%chars
 DO i=1,nw-ip-lsub+1
   work(i+ip+lsub-1) = string(if+i:if+i)
 ENDDO
 replace_cs_sf%chars => work
ENDFUNCTION replace_cs_sf

ELEMENTAL FUNCTION replace_cc(string,start,substring)
 type(VARYING_STRING)            :: replace_cc
 CHARACTER(LEN=*),INTENT(IN)     :: string
 INTEGER,INTENT(IN)              :: start
 CHARACTER(LEN=*),INTENT(IN)     :: substring
 CHARACTER,POINTER,DIMENSION(:) :: work
 INTEGER                        :: ip,is,nw,lsub,ls
 lsub = LEN(substring); ls = LEN(string)
 is = MAX(start,1)
 ip = MIN(ls+1,is)
 nw = MAX(ls,ip+lsub-1)
 ALLOCATE(work(1:nw))
 DO i=1,ip-1
   work(i) = string(i:i)
 ENDDO
 DO i=1,lsub
   work(ip-1+i) = substring(i:i)
 ENDDO
 DO i=ip+lsub,nw
   work(i) = string(i:i)
 ENDDO
 replace_cc%chars => work
ENDFUNCTION replace_cc

ELEMENTAL FUNCTION replace_cc_sf(string,start,finish,substring)
 type(VARYING_STRING)            :: replace_cc_sf
 CHARACTER(LEN=*),INTENT(IN)     :: string
 INTEGER,INTENT(IN)              :: start,finish
 CHARACTER(LEN=*),INTENT(IN)     :: substring
 CHARACTER,POINTER,DIMENSION(:) :: work
 INTEGER                        :: ip,is,if,nw,lsub,ls
 lsub = LEN(substring); ls = LEN(string)
 is = MAX(start,1)
 ip = MIN(ls+1,is)
 if = MAX(ip-1,MIN(finish,ls))
 nw = lsub + ls - if+ip-1
 ALLOCATE(work(1:nw))
 DO i=1,ip-1
   work(i) = string(i:i)
 ENDDO
 DO i=1,lsub
   work(i+ip-1) = substring(i:i)
 ENDDO
 DO i=1,nw-ip-lsub+1
   work(i+ip+lsub-1) = string(if+i:if+i)
 ENDDO
 replace_cc_sf%chars => work
ENDFUNCTION replace_cc_sf

ELEMENTAL FUNCTION replace_sss(string,target,substring,every,back)
 type(VARYING_STRING)            :: replace_sss
 type(VARYING_STRING),INTENT(IN) :: string,target,substring
 LOGICAL,INTENT(IN),OPTIONAL     :: every,back
 LOGICAL                        :: dir_switch, rep_search
 CHARACTER,DIMENSION(:),POINTER :: work,temp
 INTEGER                        :: ls,lt,lsub,ipos,ipow
 ls = LEN(string); lt = LEN(target); lsub = LEN(substring)
 IF(lt==0)THEN
   IF(ls==0)THEN
     ALLOCATE(replace_sss%chars(1:lsub))
     replace_sss%chars = substring%chars
     RETURN
   ELSE
     ALLOCATE(replace_sss%chars(1:ls))
     replace_sss%chars = string%chars
     RETURN
   ENDIF
 ENDIF
 ALLOCATE(work(1:ls)); work = string%chars
 IF( PRESENT(back) )THEN
   dir_switch = back
 ELSE
   dir_switch = .FALSE.
 ENDIF
 IF( PRESENT(every) )THEN
   rep_search = every
 ELSE
   rep_search = .FALSE.
 ENDIF
 IF( dir_switch )THEN
   ipos = ls-lt+1
   DO
     IF( ipos < 1 )EXIT
     IF( ALL(string%chars(ipos:ipos+lt-1) == target%chars) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipos-1) = work(1:ipos-1)
       temp(ipos:ipos+lsub-1) = substring%chars
       temp(ipos+lsub:) = work(ipos+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos-lt+1
     ENDIF
     ipos=ipos-1
   ENDDO
 ELSE
   ipos = 1; ipow = 1
   DO
     IF( ipos > ls-lt+1 )EXIT
     IF( ALL(string%chars(ipos:ipos+lt-1) == target%chars) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipow-1) = work(1:ipow-1)
       temp(ipow:ipow+lsub-1) = substring%chars
       temp(ipow+lsub:) = work(ipow+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos+lt-1; ipow = ipow+lsub-1
     ENDIF
     ipos=ipos+1; ipow=ipow+1
   ENDDO
 ENDIF
 replace_sss%chars => work
ENDFUNCTION replace_sss

ELEMENTAL FUNCTION replace_ssc(string,target,substring,every,back)
 type(VARYING_STRING)            :: replace_ssc
 type(VARYING_STRING),INTENT(IN) :: string,target
 CHARACTER(LEN=*),INTENT(IN)     :: substring
 LOGICAL,INTENT(IN),OPTIONAL     :: every,back
 LOGICAL                        :: dir_switch, rep_search
 CHARACTER,DIMENSION(:),POINTER :: work,temp
 INTEGER                        :: ls,lt,lsub,ipos,ipow
 ls = LEN(string); lt = LEN(target); lsub = LEN(substring)
 IF(lt==0)THEN
   IF(ls==0)THEN
     ALLOCATE(replace_ssc%chars(1:lsub))
     DO i=1,lsub
       replace_ssc%chars(i) = substring(i:i)
     ENDDO
     RETURN
   ELSE
     ALLOCATE(replace_ssc%chars(1:ls))
     replace_ssc%chars = string%chars
     RETURN
   ENDIF
 ENDIF
 ALLOCATE(work(1:ls)); work = string%chars
 IF( PRESENT(back) )THEN
   dir_switch = back
 ELSE
   dir_switch = .FALSE.
 ENDIF
 IF( PRESENT(every) )THEN
   rep_search = every
 ELSE
   rep_search = .FALSE.
 ENDIF
 IF( dir_switch )THEN
   ipos = ls-lt+1
   DO
     IF( ipos < 1 )EXIT
     IF( ALL(string%chars(ipos:ipos+lt-1) == target%chars) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipos-1) = work(1:ipos-1)
       DO i=1,lsub
         temp(i+ipos-1) = substring(i:i)
       ENDDO
       temp(ipos+lsub:) = work(ipos+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos-lt+1
     ENDIF
     ipos=ipos-1
   ENDDO
 ELSE
   ipos = 1; ipow = 1
   DO
     IF( ipos > ls-lt+1 )EXIT
     IF( ALL(string%chars(ipos:ipos+lt-1) == target%chars) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipow-1) = work(1:ipow-1)
       DO i=1,lsub
         temp(i+ipow-1) = substring(i:i)
       ENDDO
       temp(ipow+lsub:) = work(ipow+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos+lt-1; ipow = ipow+lsub-1
     ENDIF
     ipos=ipos+1; ipow=ipow+1
   ENDDO
 ENDIF
 replace_ssc%chars => work
ENDFUNCTION replace_ssc

ELEMENTAL FUNCTION replace_scs(string,target,substring,every,back)
 type(VARYING_STRING)            :: replace_scs
 type(VARYING_STRING),INTENT(IN) :: string,substring
 CHARACTER(LEN=*),INTENT(IN)     :: target
 LOGICAL,INTENT(IN),OPTIONAL     :: every,back
 LOGICAL                        :: dir_switch, rep_search
 CHARACTER,DIMENSION(:),POINTER :: work,temp,tget
 INTEGER                        :: ls,lt,lsub,ipos,ipow
 ls = LEN(string); lt = LEN(target); lsub = LEN(substring)
 IF(lt==0)THEN
   IF(ls==0)THEN
     ALLOCATE(replace_scs%chars(1:lsub))
     replace_scs%chars = substring%chars
     RETURN
   ELSE
     ALLOCATE(replace_scs%chars(1:ls))
     replace_scs%chars = string%chars
     RETURN
   ENDIF
 ENDIF
ALLOCATE(work(1:ls)); work = string%chars
 ALLOCATE(tget(1:lt))
 DO i=1,lt
   tget(i) = target(i:i)
 ENDDO
 IF( PRESENT(back) )THEN
   dir_switch = back
 ELSE
   dir_switch = .FALSE.
 ENDIF
 IF( PRESENT(every) )THEN
   rep_search = every
 ELSE
   rep_search = .FALSE.
 ENDIF
 IF( dir_switch )THEN
   ipos = ls-lt+1
   DO
     IF( ipos < 1 )EXIT
     IF( ALL(string%chars(ipos:ipos+lt-1) == tget) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipos-1) = work(1:ipos-1)
       temp(ipos:ipos+lsub-1) = substring%chars
       temp(ipos+lsub:) = work(ipos+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos-lt+1
     ENDIF
     ipos=ipos-1
   ENDDO
 ELSE
   ipos = 1; ipow = 1
   DO
     IF( ipos > ls-lt+1 )EXIT
     IF( ALL(string%chars(ipos:ipos+lt-1) == tget) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipow-1) = work(1:ipow-1)
       temp(ipow:ipow+lsub-1) = substring%chars
       temp(ipow+lsub:) = work(ipow+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos+lt-1; ipow = ipow+lsub-1
     ENDIF
     ipos=ipos+1; ipow=ipow+1
   ENDDO
 ENDIF
 replace_scs%chars => work
ENDFUNCTION replace_scs

ELEMENTAL FUNCTION replace_scc(string,target,substring,every,back)
 type(VARYING_STRING)            :: replace_scc
 type(VARYING_STRING),INTENT(IN) :: string
 CHARACTER(LEN=*),INTENT(IN)     :: target,substring
 LOGICAL,INTENT(IN),OPTIONAL     :: every,back
 LOGICAL                        :: dir_switch, rep_search
 CHARACTER,DIMENSION(:),POINTER :: work,temp,tget
 INTEGER                        :: ls,lt,lsub,ipos,ipow
 ls = LEN(string); lt = LEN(target); lsub = LEN(substring)
 IF(lt==0)THEN
   IF(ls==0)THEN
     ALLOCATE(replace_scc%chars(1:lsub))
     DO i=1,lsub
       replace_scc%chars(i) = substring(i:i)
     ENDDO
     RETURN
   ELSE
     ALLOCATE(replace_scc%chars(1:ls))
     replace_scc%chars = string%chars
     RETURN
   ENDIF
 ENDIF
 ALLOCATE(work(1:ls)); work = string%chars
 ALLOCATE(tget(1:lt))
 DO i=1,lt
   tget(i) = target(i:i)
 ENDDO
 IF( PRESENT(back) )THEN
   dir_switch = back
 ELSE
   dir_switch = .FALSE.
 ENDIF
 IF( PRESENT(every) )THEN
   rep_search = every
 ELSE
   rep_search = .FALSE.
 ENDIF
 IF( dir_switch )THEN
   ipos = ls-lt+1
   DO
     IF( ipos < 1 )EXIT
     IF( ALL(string%chars(ipos:ipos+lt-1) == tget) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipos-1) = work(1:ipos-1)
       DO i=1,lsub
         temp(i+ipos-1) = substring(i:i)
       ENDDO
       temp(ipos+lsub:) = work(ipos+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos-lt+1
     ENDIF
     ipos=ipos-1
   ENDDO
 ELSE
   ipos = 1; ipow = 1
   DO
     IF( ipos > ls-lt+1 )EXIT
     IF( ALL(string%chars(ipos:ipos+lt-1) == tget) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipow-1) = work(1:ipow-1)
       DO i=1,lsub
         temp(i+ipow-1) = substring(i:i)
       ENDDO
       temp(ipow+lsub:) = work(ipow+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos+lt-1; ipow = ipow+lsub-1
     ENDIF
     ipos=ipos+1; ipow=ipow+1
   ENDDO
 ENDIF
 replace_scc%chars => work
ENDFUNCTION replace_scc

ELEMENTAL FUNCTION replace_css(string,target,substring,every,back)
 type(VARYING_STRING)            :: replace_css
 CHARACTER(LEN=*),INTENT(IN)     :: string
 type(VARYING_STRING),INTENT(IN) :: target,substring
 LOGICAL,INTENT(IN),OPTIONAL     :: every,back
 LOGICAL                        :: dir_switch, rep_search
 CHARACTER,DIMENSION(:),POINTER :: work,temp,str
 INTEGER                        :: ls,lt,lsub,ipos,ipow
 ls = LEN(string); lt = LEN(target); lsub = LEN(substring)
 IF(lt==0)THEN
   IF(ls==0)THEN
     ALLOCATE(replace_css%chars(1:lsub))
     replace_css%chars = substring%chars
     RETURN
   ELSE
     ALLOCATE(replace_css%chars(1:ls))
     DO i=1,ls
       replace_css%chars(i) = string(i:i)
     ENDDO
     RETURN
   ENDIF
 ENDIF
 ALLOCATE(work(1:ls)); ALLOCATE(str(1:ls))
 DO i=1,ls
   str(i) = string(i:i)
 ENDDO
 work = str
 IF( PRESENT(back) )THEN
   dir_switch = back
 ELSE
   dir_switch = .FALSE.
 ENDIF
 IF( PRESENT(every) )THEN
   rep_search = every
 ELSE
   rep_search = .FALSE.
 ENDIF
 IF( dir_switch )THEN
   ipos = ls-lt+1
   DO
     IF( ipos < 1 )EXIT
     IF( ALL(str(ipos:ipos+lt-1) == target%chars) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipos-1) = work(1:ipos-1)
       temp(ipos:ipos+lsub-1) = substring%chars
       temp(ipos+lsub:) = work(ipos+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos-lt+1
     ENDIF
     ipos=ipos-1
   ENDDO
 ELSE
   ipos = 1; ipow = 1
   DO
     IF( ipos > ls-lt+1 )EXIT
     IF( ALL(str(ipos:ipos+lt-1) == target%chars) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipow-1) = work(1:ipow-1)
       temp(ipow:ipow+lsub-1) = substring%chars
       temp(ipow+lsub:) = work(ipow+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos+lt-1; ipow = ipow+lsub-1
     ENDIF
     ipos=ipos+1; ipow=ipow+1
   ENDDO
 ENDIF
 replace_css%chars => work
ENDFUNCTION replace_css

ELEMENTAL FUNCTION replace_csc(string,target,substring,every,back)
 type(VARYING_STRING)            :: replace_csc
 type(VARYING_STRING),INTENT(IN) :: target
 CHARACTER(LEN=*),INTENT(IN)     :: string,substring
 LOGICAL,INTENT(IN),OPTIONAL     :: every,back
 LOGICAL                        :: dir_switch, rep_search
 CHARACTER,DIMENSION(:),POINTER :: work,temp,str
 INTEGER                        :: ls,lt,lsub,ipos,ipow
 ls = LEN(string); lt = LEN(target); lsub = LEN(substring)
 IF(lt==0)THEN
   IF(ls==0)THEN
     ALLOCATE(replace_csc%chars(1:lsub))
     DO i=1,lsub
       replace_csc%chars(i) = substring(i:i)
     ENDDO
     RETURN
   ELSE
     ALLOCATE(replace_csc%chars(1:ls))
     DO i=1,ls
       replace_csc%chars(i) = string(i:i)
     ENDDO
     RETURN
   ENDIF
 ENDIF 
 ALLOCATE(work(1:ls)); ALLOCATE(str(1:ls))
 DO i=1,ls
   str(i) = string(i:i)
 ENDDO
 work = str
 IF( PRESENT(back) )THEN
   dir_switch = back
 ELSE
   dir_switch = .FALSE.
 ENDIF
 IF( PRESENT(every) )THEN
   rep_search = every
 ELSE
   rep_search = .FALSE.
 ENDIF
 IF( dir_switch )THEN
   ipos = ls-lt+1
   DO
     IF( ipos < 1 )EXIT
     IF( ALL(str(ipos:ipos+lt-1) == target%chars) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipos-1) = work(1:ipos-1)
       DO i=1,lsub
         temp(i+ipos-1) = substring(i:i)
       ENDDO
       temp(ipos+lsub:) = work(ipos+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos-lt+1
     ENDIF
     ipos=ipos-1
   ENDDO
 ELSE
   ipos = 1; ipow = 1
   DO
     IF( ipos > ls-lt+1 )EXIT
     IF( ALL(str(ipos:ipos+lt-1) == target%chars) )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipow-1) = work(1:ipow-1)
       DO i=1,lsub
         temp(i+ipow-1) = substring(i:i)
       ENDDO
       temp(ipow+lsub:) = work(ipow+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos+lt-1; ipow = ipow+lsub-1
     ENDIF
     ipos=ipos+1; ipow=ipow+1
   ENDDO
 ENDIF
 replace_csc%chars => work
ENDFUNCTION replace_csc

ELEMENTAL FUNCTION replace_ccs(string,target,substring,every,back)
 type(VARYING_STRING)            :: replace_ccs
 type(VARYING_STRING),INTENT(IN) :: substring
 CHARACTER(LEN=*),INTENT(IN)     :: string,target
 LOGICAL,INTENT(IN),OPTIONAL     :: every,back
 LOGICAL                        :: dir_switch, rep_search
 CHARACTER,DIMENSION(:),POINTER :: work,temp
 INTEGER                        :: ls,lt,lsub,ipos,ipow
 ls = LEN(string); lt = LEN(target); lsub = LEN(substring)
 IF(lt==0)THEN
   IF(ls==0)THEN
     ALLOCATE(replace_ccs%chars(1:lsub))
     replace_ccs%chars = substring%chars
     RETURN
   ELSE
     ALLOCATE(replace_ccs%chars(1:ls))
     DO i=1,ls
       replace_ccs%chars(i) = string(i:i)
     ENDDO
     RETURN
   ENDIF
 ENDIF 
 ALLOCATE(work(1:ls))
 DO i=1,ls
   work(i) = string(i:i)
 ENDDO
 IF( PRESENT(back) )THEN
   dir_switch = back
 ELSE
   dir_switch = .FALSE.
 ENDIF
 IF( PRESENT(every) )THEN
   rep_search = every
 ELSE
   rep_search = .FALSE.
 ENDIF
 IF( dir_switch )THEN
   ipos = ls-lt+1
   DO
     IF( ipos < 1 )EXIT
     IF( string(ipos:ipos+lt-1) == target )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipos-1) = work(1:ipos-1)
       temp(ipos:ipos+lsub-1) = substring%chars
       temp(ipos+lsub:) = work(ipos+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos-lt+1
     ENDIF
     ipos=ipos-1
   ENDDO
 ELSE
   ipos = 1; ipow = 1
   DO
     IF( ipos > ls-lt+1 )EXIT
     IF( string(ipos:ipos+lt-1) == target )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipow-1) = work(1:ipow-1)
       temp(ipow:ipow+lsub-1) = substring%chars
       temp(ipow+lsub:) = work(ipow+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos+lt-1; ipow = ipow+lsub-1
     ENDIF
     ipos=ipos+1; ipow=ipow+1
   ENDDO
 ENDIF
 replace_ccs%chars => work
ENDFUNCTION replace_ccs

ELEMENTAL FUNCTION replace_ccc(string,target,substring,every,back)
 type(VARYING_STRING)            :: replace_ccc
 CHARACTER(LEN=*),INTENT(IN)     :: string,target,substring
 LOGICAL,INTENT(IN),OPTIONAL     :: every,back
 LOGICAL                        :: dir_switch, rep_search
 CHARACTER,DIMENSION(:),POINTER :: work,temp
 INTEGER                        :: ls,lt,lsub,ipos,ipow
 ls = LEN(string); lt = LEN(target); lsub = LEN(substring)
 IF(lt==0)THEN
   IF(ls==0)THEN
     ALLOCATE(replace_ccc%chars(1:lsub))
     DO i=1,lsub
       replace_ccc%chars(i) = substring(i:i)
     ENDDO
     RETURN
   ELSE
     ALLOCATE(replace_ccc%chars(1:ls))
     DO i=1,ls
       replace_ccc%chars(i) = string(i:i)
     ENDDO
     RETURN
   ENDIF
 ENDIF 
 ALLOCATE(work(1:ls))
 DO i=1,ls
   work(i) = string(i:i)
 ENDDO
 IF( PRESENT(back) )THEN
   dir_switch = back
 ELSE
   dir_switch = .FALSE.
 ENDIF
 IF( PRESENT(every) )THEN
   rep_search = every
 ELSE
   rep_search = .FALSE.
 ENDIF
 IF( dir_switch )THEN
   ipos = ls-lt+1
   DO
     IF( ipos < 1 )EXIT
     IF( string(ipos:ipos+lt-1) == target )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipos-1) = work(1:ipos-1)
       DO i=1,lsub
         temp(i+ipos-1) = substring(i:i)
       ENDDO
       temp(ipos+lsub:) = work(ipos+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos-lt+1
     ENDIF
     ipos=ipos-1
   ENDDO
 ELSE
   ipos = 1; ipow = 1
   DO
     IF( ipos > ls-lt+1 )EXIT
     IF( string(ipos:ipos+lt-1) == target )THEN
       ALLOCATE(temp(1:SIZE(work)+lsub-lt))
       temp(1:ipow-1) = work(1:ipow-1)
       DO i=1,lsub
         temp(i+ipow-1) = substring(i:i)
       ENDDO
       temp(ipow+lsub:) = work(ipow+lt:)
       work => temp
       IF(.NOT.rep_search)EXIT
       ipos = ipos+lt-1; ipow = ipow+lsub-1
     ENDIF
     ipos=ipos+1; ipow=ipow+1
   ENDDO
 ENDIF
 replace_ccc%chars => work
ENDFUNCTION replace_ccc

ELEMENTAL FUNCTION remove_s(string,start,finish)
 type(VARYING_STRING)            :: remove_s
 type(VARYING_STRING),INTENT(IN) :: string
 INTEGER,INTENT(IN),OPTIONAL     :: start
 INTEGER,INTENT(IN),OPTIONAL     :: finish
 CHARACTER,DIMENSION(:),POINTER :: arg_str
 INTEGER                        :: is,if,ls
 ls = LEN(string)
 IF (PRESENT(start)) THEN
   is = MAX(1,start)
 ELSE
   is = 1
 ENDIF
 IF (PRESENT(finish)) THEN
   if = MIN(ls,finish)
 ELSE
   if = ls
 ENDIF
 IF( if < is ) THEN
   ALLOCATE(arg_str(1:ls))
   arg_str = string%chars
 ELSE
   ALLOCATE(arg_str(1:ls-if+is-1) )
   arg_str(1:is-1) = string%chars(1:is-1)
   arg_str(is:) = string%chars(if+1:)
 ENDIF
 remove_s%chars => arg_str
ENDFUNCTION remove_s

ELEMENTAL FUNCTION remove_c(string,start,finish)
 type(VARYING_STRING)        :: remove_c
 CHARACTER(LEN=*),INTENT(IN) :: string
 INTEGER,INTENT(IN),OPTIONAL :: start
 INTEGER,INTENT(IN),OPTIONAL :: finish
 CHARACTER,DIMENSION(:),POINTER :: arg_str
 INTEGER                        :: is,if,ls
 ls = LEN(string)
 IF (PRESENT(start)) THEN
   is = MAX(1,start)
 ELSE
   is = 1
 ENDIF
 IF (PRESENT(finish)) THEN
   if = MIN(ls,finish)
 ELSE
   if = ls
 ENDIF
 IF( if < is ) THEN
   ALLOCATE(arg_str(1:ls))
   DO i=1,ls
     arg_str(i) = string(i:i)
   ENDDO
 ELSE
   ALLOCATE(arg_str(1:ls-if+is-1) )
   DO i=1,is-1
     arg_str(i) = string(i:i)
   ENDDO
   DO i=is,ls-if+is-1
     arg_str(i) = string(i-is+if+1:i-is+if+1)
   ENDDO
 ENDIF
 remove_c%chars => arg_str
ENDFUNCTION remove_c

ELEMENTAL FUNCTION extract_s(string,start,finish) 
  type(VARYING_STRING),INTENT(IN) :: string 
  INTEGER,INTENT(IN),OPTIONAL     :: start     
  INTEGER,INTENT(IN),OPTIONAL     :: finish     
  type(VARYING_STRING)            :: extract_s 
  INTEGER                         :: is,if 
  IF (PRESENT(start)) THEN  
     is = MAX(1,start) 
  ELSE 
     is = 1 
  ENDIF 
  IF (PRESENT(finish)) THEN  
     if = MIN(LEN(string),finish) 
  ELSE 
     if = LEN(string) 
  ENDIF 
  ALLOCATE(extract_s%chars(1:if-is+1)) 
  extract_s%chars = string%chars(is:if)
 ENDFUNCTION extract_s 

ELEMENTAL FUNCTION extract_c(string,start,finish)
  CHARACTER(LEN=*),INTENT(IN) :: string 
  INTEGER,INTENT(IN),OPTIONAL :: start   
  INTEGER,INTENT(IN),OPTIONAL :: finish  
  type(VARYING_STRING)        :: extract_c 
  INTEGER                      :: is,if 
  IF (PRESENT(start)) THEN    
     is = MAX(1,start) 
  ELSE 
     is = 1 
  ENDIF 
  IF (PRESENT(finish)) THEN  
     if = MIN(LEN(string),finish) 
  ELSE 
     if = LEN(string) 
  ENDIF 
  ALLOCATE(extract_c%chars(1:if-is+1)) 
  DO i=is,if 
    extract_c%chars(i-is+1) = string(i:i) 
  ENDDO 
 ENDFUNCTION extract_c 

ELEMENTAL SUBROUTINE split_s(string,word,set,separator,back)
  type(VARYING_STRING),INTENT(INOUT)        :: string
  type(VARYING_STRING),INTENT(OUT)          :: word
  type(VARYING_STRING),INTENT(IN)           :: set
  type(VARYING_STRING),INTENT(OUT),OPTIONAL :: separator
  LOGICAL,INTENT(IN),OPTIONAL               :: back
  LOGICAL           :: dir_switch 
  INTEGER           :: ls,tpos
  CHARACTER,ALLOCATABLE :: wst(:)
  ls = LEN(string)
  ALLOCATE(wst(ls))
  wst=string%chars
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    DO tpos = ls,1,-1
       IF(ANY(wst(tpos) == set%chars))EXIT
    ENDDO
    IF(ASSOCIATED(word%chars))DEALLOCATE(word%chars)
    ALLOCATE(word%chars(ls-tpos))
    word%chars = wst(tpos+1:ls)
    IF(PRESENT(separator))THEN
      IF(tpos==0)THEN
        separator = ""
      ELSE
        separator = wst(tpos)
      ENDIF
    ENDIF
    DEALLOCATE(string%chars)
    ALLOCATE(string%chars(tpos-1))
    string%chars = wst(1:tpos-1)
  ELSE
    DO tpos =1,ls
       IF(ANY(wst(tpos) == set%chars))EXIT
    ENDDO
    IF(ASSOCIATED(word%chars))DEALLOCATE(word%chars)
    ALLOCATE(word%chars(tpos-1))
    word%chars = wst(1:tpos-1)
    IF(PRESENT(separator))THEN
      IF(tpos==ls+1)THEN
        separator = ""
      ELSE
        separator = wst(tpos)
      ENDIF
    ENDIF
    DEALLOCATE(string%chars)
    ALLOCATE(string%chars(ls-tpos))
    string%chars = wst(tpos+1:ls)
  ENDIF
 ENDSUBROUTINE split_s

ELEMENTAL SUBROUTINE split_c(string,word,set,separator,back)
  type(VARYING_STRING),INTENT(INOUT)        :: string
  type(VARYING_STRING),INTENT(OUT)          :: word
  CHARACTER(LEN=*),INTENT(IN)               :: set
  type(VARYING_STRING),INTENT(OUT),OPTIONAL :: separator
  LOGICAL,INTENT(IN),OPTIONAL               :: back
  LOGICAL                    :: dir_switch 
  INTEGER                    :: ls,tpos,lset
  CHARACTER,ALLOCATABLE :: wst(:)
  ls = LEN(string); lset = LEN(set)
  ALLOCATE(wst(ls))
  wst=string%chars
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    BSEARCH:DO tpos = ls,1,-1
       DO i=1,lset
         IF(wst(tpos) == set(i:i))EXIT BSEARCH
       ENDDO
    ENDDO BSEARCH
    IF(ASSOCIATED(word%chars))DEALLOCATE(word%chars)
    ALLOCATE(word%chars(ls-tpos))
    word%chars = wst(tpos+1:ls)
    IF(PRESENT(separator))THEN
      IF(tpos==0)THEN
        separator = ""
      ELSE
        separator = wst(tpos)
      ENDIF
    ENDIF
    DEALLOCATE(string%chars)
    ALLOCATE(string%chars(tpos-1))
    string%chars = wst(1:tpos-1)
  ELSE
    FSEARCH:DO tpos =1,ls
       DO i=1,lset
         IF(wst(tpos) == set(i:i))EXIT FSEARCH
       ENDDO
    ENDDO FSEARCH
    IF(ASSOCIATED(word%chars))DEALLOCATE(word%chars)
    ALLOCATE(word%chars(tpos-1))
    word%chars = wst(1:tpos-1)
    IF(PRESENT(separator))THEN
      IF(tpos==ls+1)THEN
        separator = ""
      ELSE
        separator = wst(tpos)
      ENDIF
    ENDIF
    DEALLOCATE(string%chars)
    ALLOCATE(string%chars(ls-tpos))
    string%chars = wst(tpos+1:ls)
  ENDIF
 ENDSUBROUTINE split_c

 ELEMENTAL FUNCTION index_ss(string,substring,back) 
  type(VARYING_STRING),INTENT(IN) :: string,substring 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: index_ss 
  LOGICAL                         :: dir_switch 
  INTEGER                         :: ls,lsub 
  ls = LEN(string); lsub = LEN(substring) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    DO i = ls-lsub+1,1,-1 
      IF( ALL(string%chars(i:i+lsub-1) == substring%chars) )THEN 
        index_ss = i 
        RETURN 
      ENDIF 
    ENDDO 
    index_ss = 0 
  ELSE
    DO i = 1,ls-lsub+1 
      IF( ALL(string%chars(i:i+lsub-1) == substring%chars) )THEN 
        index_ss = i 
        RETURN 
      ENDIF 
    ENDDO 
    index_ss = 0 
  ENDIF 
 ENDFUNCTION index_ss 

 ELEMENTAL FUNCTION index_sc(string,substring,back)
  type(VARYING_STRING),INTENT(IN) :: string 
  CHARACTER(LEN=*),INTENT(IN)     :: substring 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: index_sc 
  LOGICAL                         :: dir_switch,matched 
  INTEGER                         :: ls,lsub 
  ls = LEN(string); lsub = LEN(substring) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF (dir_switch) THEN
    DO i = ls-lsub+1,1,-1 
      matched = .TRUE. 
      DO j = 1,lsub 
        IF( string%chars(i+j-1) /= substring(j:j) )THEN 
          matched = .FALSE. 
          EXIT 
        ENDIF 
      ENDDO 
      IF( matched )THEN 
        index_sc = i 
        RETURN 
      ENDIF 
    ENDDO 
    index_sc = 0 
  ELSE
    DO i = 1,ls-lsub+1 
      matched = .TRUE. 
      DO j = 1,lsub 
        IF( string%chars(i+j-1) /= substring(j:j) )THEN 
          matched = .FALSE. 
          EXIT 
        ENDIF 
      ENDDO 
      IF( matched )THEN 
        index_sc = i 
        RETURN 
      ENDIF 
    ENDDO 
    index_sc = 0 
  ENDIF 
 ENDFUNCTION index_sc 

 ELEMENTAL FUNCTION index_cs(string,substring,back)
  CHARACTER(LEN=*),INTENT(IN)     :: string 
  type(VARYING_STRING),INTENT(IN) :: substring 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: index_cs 
  LOGICAL                         :: dir_switch,matched 
  INTEGER                         :: ls,lsub 
  ls = LEN(string); lsub = LEN(substring) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    DO i = ls-lsub+1,1,-1 
      matched = .TRUE. 
      DO j = 1,lsub 
        IF( string(i+j-1:i+j-1) /= substring%chars(j) )THEN 
          matched = .FALSE. 
          EXIT 
        ENDIF 
      ENDDO 
      IF( matched )THEN 
        index_cs = i 
        RETURN 
      ENDIF 
    ENDDO 
    index_cs = 0 
  ELSE
    DO i = 1,ls-lsub+1 
      matched = .TRUE. 
      DO j = 1,lsub 
        IF( string(i+j-1:i+j-1) /= substring%chars(j) )THEN 
          matched = .FALSE. 
          EXIT 
        ENDIF 
      ENDDO 
      IF( matched )THEN 
        index_cs = i 
        RETURN 
      ENDIF 
    ENDDO 
    index_cs = 0 
  ENDIF 
 ENDFUNCTION index_cs 

 ELEMENTAL FUNCTION scan_ss(string,set,back) 
  type(VARYING_STRING),INTENT(IN) :: string,set 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: scan_ss 
  LOGICAL                         :: dir_switch 
  INTEGER                         :: ls 
  ls = LEN(string) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    DO i = ls,1,-1 
      IF( ANY( set%chars == string%chars(i) ) )THEN 
        scan_ss = i 
        RETURN 
      ENDIF 
    ENDDO 
    scan_ss = 0 
  ELSE
    DO i = 1,ls 
      IF( ANY( set%chars == string%chars(i) ) )THEN 
        scan_ss = i 
        RETURN 
      ENDIF 
    ENDDO 
    scan_ss = 0 
  ENDIF 
 ENDFUNCTION scan_ss 

 ELEMENTAL FUNCTION scan_sc(string,set,back)
  type(VARYING_STRING),INTENT(IN) :: string 
  CHARACTER(LEN=*),INTENT(IN)     :: set 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: scan_sc 
  LOGICAL                         :: dir_switch,matched 
  INTEGER                         :: ls 
  ls = LEN(string) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    DO i = ls,1,-1 
      matched = .FALSE. 
      DO j = 1,LEN(set) 
        IF( string%chars(i) == set(j:j) )THEN 
          matched = .TRUE. 
          EXIT 
        ENDIF 
      ENDDO 
      IF( matched )THEN 
        scan_sc = i 
        RETURN 
      ENDIF 
    ENDDO 
    scan_sc = 0 
  ELSE
    DO i = 1,ls 
      matched = .FALSE. 
      DO j = 1,LEN(set) 
        IF( string%chars(i) == set(j:j) )THEN 
          matched = .TRUE. 
          EXIT 
        ENDIF 
      ENDDO 
      IF( matched )THEN 
        scan_sc = i 
        RETURN 
      ENDIF 
    ENDDO 
    scan_sc = 0 
  ENDIF 
 ENDFUNCTION scan_sc 

 ELEMENTAL FUNCTION scan_cs(string,set,back)
  CHARACTER(LEN=*),INTENT(IN)     :: string 
  type(VARYING_STRING),INTENT(IN) :: set 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: scan_cs 
  LOGICAL                         :: dir_switch,matched 
  INTEGER                         :: ls 
  ls = LEN(string) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    DO i = ls,1,-1 
      matched = .FALSE. 
      DO j = 1,LEN(set) 
        IF( string(i:i) == set%chars(j) )THEN 
          matched = .TRUE. 
          EXIT 
        ENDIF 
      ENDDO 
      IF( matched )THEN 
        scan_cs = i 
        RETURN 
      ENDIF 
    ENDDO 
    scan_cs = 0 
  ELSE
    DO i = 1,ls 
      matched = .FALSE. 
      DO j = 1,LEN(set) 
        IF( string(i:i) == set%chars(j) )THEN 
          matched = .TRUE. 
          EXIT 
        ENDIF 
      ENDDO 
      IF( matched )THEN 
        scan_cs = i 
        RETURN 
      ENDIF 
    ENDDO 
    scan_cs = 0 
  ENDIF 
 ENDFUNCTION scan_cs 

 ELEMENTAL FUNCTION verify_ss(string,set,back) 
  type(VARYING_STRING),INTENT(IN) :: string,set 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: verify_ss 
  LOGICAL                     :: dir_switch 
  INTEGER                     :: ls 
  ls = LEN(string) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    DO i = ls,1,-1 
      IF( .NOT.(ANY( set%chars == string%chars(i) )) )THEN 
        verify_ss = i 
        RETURN 
      ENDIF 
    ENDDO 
    verify_ss = 0 
  ELSE
    DO i = 1,ls 
      IF( .NOT.(ANY( set%chars == string%chars(i) )) )THEN 
        verify_ss = i 
        RETURN 
      ENDIF 
    ENDDO 
    verify_ss = 0 
  ENDIF 
 ENDFUNCTION verify_ss 

 ELEMENTAL FUNCTION verify_sc(string,set,back)
  type(VARYING_STRING),INTENT(IN) :: string 
  CHARACTER(LEN=*),INTENT(IN)     :: set 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: verify_sc 
  LOGICAL                     :: dir_switch
  INTEGER                     :: ls 
  ls = LEN(string) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    back_string_search:DO i = ls,1,-1 
      DO j = 1,LEN(set) 
        IF( string%chars(i) == set(j:j) )CYCLE back_string_search
      ENDDO 
        verify_sc = i 
        RETURN 
    ENDDO back_string_search
    verify_sc = 0 
  ELSE
    frwd_string_search:DO i = 1,ls 
      DO j = 1,LEN(set) 
        IF( string%chars(i) == set(j:j) )CYCLE frwd_string_search
      ENDDO 
        verify_sc = i 
        RETURN 
    ENDDO frwd_string_search
    verify_sc = 0 
  ENDIF 
 ENDFUNCTION verify_sc 

 ELEMENTAL FUNCTION verify_cs(string,set,back)
  CHARACTER(LEN=*),INTENT(IN)     :: string 
  type(VARYING_STRING),INTENT(IN) :: set 
  LOGICAL,INTENT(IN),OPTIONAL     :: back 
  INTEGER                         :: verify_cs 
  LOGICAL                     :: dir_switch
  INTEGER                     :: ls 
  ls = LEN(string) 
  IF( PRESENT(back) )THEN 
    dir_switch = back 
  ELSE 
    dir_switch = .FALSE. 
  ENDIF 
  IF(dir_switch)THEN
    back_string_search:DO i = ls,1,-1 
      DO j = 1,LEN(set) 
        IF( string(i:i) == set%chars(j) )CYCLE back_string_search
      ENDDO 
        verify_cs = i 
        RETURN 
    ENDDO back_string_search
    verify_cs = 0 
  ELSE
    frwd_string_search:DO i = 1,ls 
      DO j = 1,LEN(set) 
        IF( string(i:i) == set%chars(j) )CYCLE frwd_string_search
      ENDDO 
        verify_cs = i 
        RETURN 
    ENDDO frwd_string_search
    verify_cs = 0 
  ENDIF 
 ENDFUNCTION verify_cs 

ELEMENTAL FUNCTION len_trim_s(string) 
 type(VARYING_STRING),INTENT(IN) :: string 
 INTEGER                         :: len_trim_s 
 INTEGER                         :: ls 
 ls=LEN(string) 
 len_trim_s = 0 
 DO i = ls,1,-1 
    IF (string%chars(i) /= BLANK) THEN 
       len_trim_s = i 
       EXIT 
    ENDIF 
 ENDDO 
ENDFUNCTION len_trim_s 

ELEMENTAL FUNCTION trim_s(string) 
 type(VARYING_STRING),INTENT(IN)  :: string 
 type(VARYING_STRING)             :: trim_s 
 INTEGER                      :: ls,pos 
 ls=LEN(string) 
 pos=0 
 DO i = ls,1,-1 
    IF(string%chars(i) /= BLANK) THEN 
       pos=i 
       EXIT 
    ENDIF 
 ENDDO 
 ALLOCATE(trim_s%chars(1:pos))
 trim_s%chars(1:pos) = string%chars(1:pos) 
ENDFUNCTION trim_s 

ELEMENTAL FUNCTION iachar_s(string) 
 type(VARYING_STRING),INTENT(IN) :: string 
 INTEGER                         :: iachar_s 
 iachar_s = IACHAR(CHAR(string)) 
ENDFUNCTION iachar_s 

ELEMENTAL FUNCTION ichar_s(string) 
 type(VARYING_STRING),INTENT(IN) :: string 
 INTEGER                         :: ichar_s 
 ichar_s = ICHAR(CHAR(string)) 
ENDFUNCTION ichar_s 

ELEMENTAL FUNCTION adjustl_s(string) 
 type(VARYING_STRING),INTENT(IN) :: string 
 type(VARYING_STRING)            :: adjustl_s 
 INTEGER                         :: ls,pos 
 ls=LEN(string) 
 DO pos = 1,ls 
    IF(string%chars(pos) /= blank) EXIT 
 ENDDO 
 ALLOCATE(adjustl_s%chars(1:ls)) 
 adjustl_s%chars(1:ls-pos+1) = string%chars(pos:ls)
 adjustl_s%chars(ls-pos+2:ls) = blank
ENDFUNCTION adjustl_s 

ELEMENTAL FUNCTION adjustr_s(string) 
 type(VARYING_STRING),INTENT(IN) :: string 
 type(VARYING_STRING)            :: adjustr_s 
 INTEGER                         :: ls,pos 
 ls=LEN(string) 
 DO pos = ls,1,-1 
    IF(string%chars(pos) /= blank) EXIT 
 ENDDO 
 ALLOCATE(adjustr_s%chars(1:ls)) 
 adjustr_s%chars(ls-pos+1:ls) = string%chars(1:pos) 
 adjustr_s%chars(1:ls-pos) = blank 
ENDFUNCTION adjustr_s 

ENDMODULE ISO_VARYING_STRING
MODULE ISO_VARYING_STRING_TEST_AUX
USE ISO_VARYING_STRING
PRIVATE
LOGICAL,PARAMETER :: ok = .FALSE., not_ok = .TRUE.
LOGICAL :: verbose

INTEGER,PARAMETER :: tst_length = 40, &
                     ntst = 3, &
                     ndim = 2

PUBLIC print_heading,irand,random_char,error_report,ok,not_ok,tst_length,ntst,&
       verbose,ndim

CONTAINS

FUNCTION irand(lower, upper)
  INTEGER :: irand, lower, upper
  REAL :: rand
  CALL RANDOM_NUMBER(rand)
  irand = lower +INT( rand*REAL(upper-lower+1))
ENDFUNCTION irand

SUBROUTINE random_char(char_a,istart,ifin)
  CHARACTER(LEN=*) :: char_a
  INTEGER,OPTIONAL :: istart,ifin
  INTEGER          :: st,fn
  IF(PRESENT(istart))THEN
    st = MIN(MAX(32,istart),126)
  ELSE
    st = 32
  ENDIF
  IF(PRESENT(ifin))THEN
    fn = MAX(MIN(126,ifin),32)
  ELSE
    fn = 126
  ENDIF
  DO i = 1,LEN(char_a)
    char_a(i:i) = ACHAR(irand(st,fn))
  ENDDO
ENDSUBROUTINE random_char

SUBROUTINE print_heading(test_id)
  CHARACTER(LEN=*) :: test_id
  CHARACTER :: yorn
  WRITE(91,'(75("-"))')
  WRITE(91,'("ISO_VARYING_STRING validation report for "/"    ",A/)') test_id
  WRITE(91,'(A)',ADVANCE='NO') "Report failures only (Y/N)?"
  WRITE(92,'(a)') 'Y'
  rewind 92
  READ(92,'(A)') yorn
  IF( yorn == "Y" .OR. yorn == "y" )THEN
    verbose = .FALSE.
  ELSE
    verbose = .TRUE.
  ENDIF
ENDSUBROUTINE print_heading

SUBROUTINE error_report(not_ok,message)
  CHARACTER(LEN=*) :: message
  LOGICAL :: not_ok
  IF(not_ok)THEN
    WRITE(*,'(" *ERROR* ",A)') message
  ELSE
    WRITE(*,'(" TEST OK,",A)') message
  ENDIF
ENDSUBROUTINE error_report

ENDMODULE ISO_VARYING_STRING_TEST_AUX

PROGRAM MAIN
USE ISO_VARYING_STRING
USE ISO_VARYING_STRING_TEST_AUX
LOGICAL :: tst_res, test = ok
INTEGER :: st,fn,rl
CHARACTER(LEN=tst_length) :: char_a

CALL print_heading("VAR_STR and CHAR consistency")
CALL random_char(char_a)

tst_res = ok
IF("" /= CHAR(VAR_STR("")))THEN
 tst_res = not_ok; test = not_ok
ENDIF
IF(tst_res .OR. verbose)THEN
  CALL error_report(tst_res, &
        "CHAR(VAR_STR(chr)) for zero length chr")
  CALL display1(CHAR(VAR_STR("")),"")
ENDIF

DO i=1,ntst
  st = irand(1,tst_length)
  fn = irand(st,tst_length)
  tst_res = ok
  IF(char_a(st:fn) /= CHAR(VAR_STR(char_a(st:fn))))THEN
    tst_res = not_ok; test = not_ok
  ENDIF
  IF(tst_res .OR. verbose)THEN
    CALL error_report(tst_res, &
        "CHAR(VAR_STR(chr)) for non-zero length chr")
    CALL display1(CHAR(VAR_STR(char_a(st:fn))),char_a(st:fn))
  ENDIF
ENDDO

tst_res = ok
IF("" /= CHAR(VAR_STR(""),0))THEN
  tst_res = not_ok; test = not_ok
ENDIF
IF(tst_res .OR. verbose)THEN
  CALL error_report(tst_res, &
        "CHAR(string,length) for LEN(string)=0 and length=0")
  CALL display2(CHAR(VAR_STR(""),0),"",VAR_STR(""),0)
ENDIF

tst_res = ok
IF("" /= CHAR(VAR_STR(char_a(10:15)),0))THEN
  tst_res = not_ok; test = not_ok
ENDIF
IF(tst_res .OR. verbose)THEN
  CALL error_report(tst_res, &
        "CHAR(string,length) for LEN(string)>0 and length=0")
  CALL display2(CHAR(VAR_STR(char_a(10:15)),0),"",VAR_STR(char_a(10:15)),0)
ENDIF

tst_res = ok
IF("     " /= CHAR(VAR_STR(""),5))THEN
  tst_res = not_ok; test = not_ok
ENDIF
IF(tst_res .OR. verbose)THEN
  CALL error_report(tst_res, &
        "CHAR(string,length) for LEN(string)=0 and length>0")
  CALL display2(CHAR(VAR_STR(""),5),"     ",VAR_STR(""),5)
ENDIF

DO i=1,ntst
  st = irand(1,tst_length)
  fn = irand(st,tst_length)
  tst_res = ok
  IF(char_a(st:fn) /= CHAR(VAR_STR(char_a(st:fn)),fn-st+1))THEN
    tst_res = not_ok; test = not_ok
  ENDIF
  IF(tst_res .OR. verbose)THEN
    CALL error_report(tst_res, &
        "CHAR(string,length) for LEN(string)=length/=0")
    CALL display2(CHAR(VAR_STR(char_a(st:fn)),fn-st+1), &
                  char_a(st:fn),VAR_STR(char_a(st:fn)),fn-st+1)
  ENDIF
ENDDO

DO i=1,ntst
  st = irand(1,tst_length)
  fn = irand(st,tst_length)
  rl = irand(1,fn-st)
  tst_res = ok
  IF(char_a(st:st+rl-1) /= CHAR(VAR_STR(char_a(st:fn)),rl))THEN
    tst_res = not_ok; test = not_ok
  ENDIF
  IF(tst_res .OR. verbose)THEN
    CALL error_report(tst_res, &
        "CHAR(string,length) for LEN(string)>length/=0")
    CALL display2(CHAR(VAR_STR(char_a(st:fn)),rl), &
                  char_a(st:st+rl-1),VAR_STR(char_a(st:fn)),rl)
  ENDIF
ENDDO

DO i=1,ntst
  st = irand(1,tst_length)
  rl = irand(1,tst_length-st+1)
  fn = irand(st,st+rl-1)
  tst_res = ok
  IF(char_a(st:fn) /= CHAR(VAR_STR(char_a(st:fn)),rl))THEN
    tst_res = not_ok; test = not_ok
  ENDIF
  IF(tst_res .OR. verbose)THEN
    CALL error_report(tst_res, &
        "CHAR(string,length) for LEN(string)<length/=0")
    CALL display2(CHAR(VAR_STR(char_a(st:fn)),rl), &
                  char_a(st:fn),VAR_STR(char_a(st:fn)),rl)
  ENDIF
ENDDO
IF(test)THEN
  WRITE(*,'(/A)') "VAR_STR and CHAR procedures validation FAILED"
ELSE
  print *,'pass'
ENDIF

CONTAINS

SUBROUTINE display1(val,arg)
 CHARACTER(LEN=*) :: val,arg
 WRITE(*,'("  result=",A,"(",I3,")")') val,LEN(val)
 WRITE(*,'("argument=",A,"(",I3,")")') arg,LEN(arg)
ENDSUBROUTINE display1

SUBROUTINE display2(val,res,str,ln)
  CHARACTER(LEN=*)     :: val,res
  type(VARYING_STRING) :: str
  INTEGER              :: ln
  WRITE(*,'("  result=",A,"(",I3,")")') val,LEN(val)
  WRITE(*,'(" exp.res=",A,"(",I3,")")') res,LEN(res)
  WRITE(*,'("  string=",A,"(",I3,")")') CHAR(str),LEN(CHAR(str))
  WRITE(*,'("  length=",I3)') ln
ENDSUBROUTINE display2

ENDPROGRAM MAIN
