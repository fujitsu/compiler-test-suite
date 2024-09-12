      call s1
      print *,'pass'
      end
  subroutine s1
   character(10):: date,time,zone
   integer      ::values(8)
   integer      :: flag
    flag=1
    call ss1(date,time,zone,values)
    contains
     subroutine &
         ss1(date,time,zone,values)
   character(*):: date,time,zone
   integer     ::values(:)
    call date_and_time(date=date,time=time,zone=zone,values=values)
    call date_and_time(date=date,time=time,zone=zone              )
    call date_and_time(date=date,time=time,          values=values)
    call date_and_time(date=date,          zone=zone,values=values)
    call date_and_time(          time=time,zone=zone,values=values)
    call date_and_time(                    zone=zone,values=values)
    call date_and_time(          time=time,          values=values)
    call date_and_time(          time=time,zone=zone              )
    call date_and_time(date=date,                    values=values)
    call date_and_time(date=date,          zone=zone              )
    call date_and_time(date=date,time=time                        )
    call date_and_time(date=date                                  )
    call date_and_time(          time=time                        )
    call date_and_time(                    zone=zone              )
    call date_and_time(                              values=values)
    call date_and_time(                                           )
  end subroutine
    end
