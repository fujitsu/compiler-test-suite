use,intrinsic :: iso_c_binding,only:C_NULL_CHAR,C_ALERT,C_BACKSPACE, &
                                  & C_FORM_FEED,C_NEW_LINE, &
                                  & C_CARRIAGE_RETURN,C_CARRIAGE_RETURN, &
                                  & C_HORIZONTAL_TAB,C_VERTICAL_TAB

  if (ICHAR(C_NULL_CHAR) .ne. 0) print *,'ng'
  if (ICHAR(C_ALERT) .ne. 7) print *,'ng'
  if (ICHAR(C_BACKSPACE) .ne. 8) print *,'ng'
  if (ICHAR(C_FORM_FEED) .ne. 12) print *,'ng'
  if (ICHAR(C_NEW_LINE) .ne. 10) print *,'ng'
  if (ICHAR(C_CARRIAGE_RETURN) .ne. 13) print *,'ng'
  if (ICHAR(C_HORIZONTAL_TAB) .ne. 9) print *,'ng'
  if (ICHAR(C_VERTICAL_TAB) .ne. 11) print *,'ng'
  print *,'ok'
end
