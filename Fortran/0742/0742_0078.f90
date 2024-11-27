      LOGICAL FUNCTION DecodeDateTime(wPackedDate, wPackedTime, &
     &        nYear, nMonth, nDay, nHour, nMinute, nSecond)

      IMPLICIT NONE

      INTEGER wPackedDate, wPackedTime
      INTEGER nYear, nMonth, nDay, nHour, nMinute, nSecond

      INTEGER nSecMask, nMinMask, nHrMask
      INTEGER nDayMask, nMonMask, nYrMask

      DATA nSecMask, nMinMask, nHrMask /Z'1F', Z'3F', Z'1F'/
      DATA nDayMask, nMonMask, nYrMask /Z'1F', Z'0F', Z'7F'/

      DecodeDateTime = .FALSE.

      nSecond = IAND(      wPackedTime,       nSecMask) * 2
      nMinute = IAND(ISHFT(wPackedTime,  -5), nMinMask)
      nHour =   IAND(ISHFT(wPackedTime, -11), nHrMask)

      IF (nSecond > 59) RETURN
      IF (nMinute > 59) RETURN
      IF (nHour > 23) RETURN

      nDay =   IAND(      wPackedDate,      nDayMask)
      nMonth = IAND(ISHFT(wPackedDate, -5), nMonMask)
      nYear =  IAND(ISHFT(wPackedDate, -9), nYrMask) + 1980

      IF (nDay == 0) RETURN
      IF (nMonth > 12) RETURN

      DecodeDateTime = .TRUE.

      RETURN
      END

      LOGICAL FUNCTION EncodeDateTime(wPackedDate, wPackedTime, &
     &        nYear, nMonth, nDay, nHour, nMinute, nSecond)

      IMPLICIT NONE

      INTEGER wPackedDate, wPackedTime
      INTEGER nYear, nMonth, nDay, nHour, nMinute, nSecond

      EncodeDateTime = .FALSE.

      IF ( (nSecond  >= 60) .OR. &
     &     (nMinute  >= 60) .OR. &
     &	 (nHour    >= 24) .OR. &
     &	 (nDay     >  31) .OR. &
     &	 (nMonth   >  12) .OR. &
     &	 (nYear    <   0)      ) RETURN

      wPackedDate = 0
      wPackedTime = 0

      wPackedTime = ISHFT(nHour, 6)
      wPackedTime = ISHFT(wPackedTime + nMinute, 5)
      wPackedTime = wPackedTime + nSecond / 2

      wPackedDate = ISHFT(nYear - 1980, 4)
      wPackedDate = ISHFT(wPackedDate + nMonth, 5)
      wPackedDate = wPackedDate + nDay

      EncodeDateTime = .TRUE.

      RETURN
      END
      print *,'pass'
      end
