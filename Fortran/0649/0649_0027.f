      S = P_BARRIER()
      S = P_EVENT_CREATE()
      S = P_EVENT_RESET()
      S = P_EVENT_POST()
      S = P_EVENT_WAIT()
      S = P_EVENT_DELETE()
      PRINT *,'*****  TEST  OK  *****'
      END
            FUNCTION P_BARRIER()
            P_BARRIER=0
      END
            FUNCTION P_EVENT_CREATE()
            P_EVENT_CREATE=0
      END
            FUNCTION P_EVENT_RESET()
            P_EVENT_RESET=0
      END
            FUNCTION P_EVENT_POST()
            P_EVENT_POST=0
      END
            FUNCTION P_EVENT_WAIT()
            P_EVENT_WAIT=0
      END
            FUNCTION P_EVENT_DELETE()
            P_EVENT_DELETE=0
      END
