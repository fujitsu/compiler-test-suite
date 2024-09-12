      call s1
      print *,'pass'
      end
      subroutine s1
      character*8 date,time*10,zone*5
      integer*4   values(8)
      structure /x/
      character*8 date,time*10,zone*5
      integer*4   values(8)
      end structure
      record /x/ x1,x2(2,2),x3(:,:)
      allocatable x3
      allocate   (x3(2,2))
      call date_and_time(date,time,zone,values)
      write(1)date, time ,zone ,         values
      call date_and_time(x1.date,x1.time,x1.zone,x1.values)
      write(1)x1.date, x1.time ,x1.zone ,  x1.values
      call date_and_time(x2(2,2).date,
     1     x2(2,2).time,x2(2,2).zone,x2(2,2).values)
      write(1)x2(2,2).date, x2(2,2).time ,
     1     x2(2,2).zone ,  x2(2,2).values
      call date_and_time(x3(2,2).date,
     1     x3(2,2).time,x3(2,2).zone,x3(2,2).values)
      write(1)x3(2,2).date, x3(2,2).time ,
     1     x3(2,2).zone ,  x3(2,2).values
      call date_and_time(date,time,zone       )
      write(1)date, time ,zone ,         values
      call date_and_time(x1.date,x1.time,x1.zone          )
      write(1)x1.date, x1.time ,x1.zone ,  x1.values
      call date_and_time(x2(2,2).date,
     1     x2(2,2).time,x2(2,2).zone               )
      write(1)x2(2,2).date, x2(2,2).time ,
     1     x2(2,2).zone ,  x2(2,2).values
      call date_and_time(x3(2,2).date,
     1     x3(2,2).time,x3(2,2).zone               )
      write(1)x3(2,2).date, x3(2,2).time ,
     1     x3(2,2).zone ,  x3(2,2).values
      call date_and_time(date,time            )
      write(1)date, time 
      call date_and_time(x1.date,x1.time                  )
      write(1)x1.date, x1.time ,x1.zone 
      call date_and_time(x2(2,2).date,
     1     x2(2,2).time                            )
      write(1)x2(2,2).date, x2(2,2).time ,
     1     x2(2,2).zone 
      call date_and_time(x3(2,2).date,
     1     x3(2,2).time                            )
      write(1)x3(2,2).date, x3(2,2).time ,
     1     x3(2,2).zone 
      call date_and_time(date)
      write(1)date
      call date_and_time(x1.date)
      write(1)x1.date, x1.time
      call date_and_time(x2(2,2).date)
      write(1)x2(2,2).date
      call date_and_time(x3(2,2).date)
      write(1)x3(2,2).date
      call date_and_time(    )
      call sd
      end
      subroutine sd
      integer*4 count,count_rate,count_max
      structure /x/
      integer*4 count,count_rate,count_max
      end structure
      record /x/ x1,x2(2,2),x3(:,:)
      allocatable x3
      allocate (x3(2,2))
      call system_clock( count,count_rate,count_max)
      write(1)count,count_rate,count_max
      call system_clock( x1.count,x1.count_rate,x1.count_max)
      write(1)x1.count,x1.count_rate,x1.count_max
      call system_clock( x2(2,2).count,x2(2,2).count_rate,
     1                   x2(2,2).count_max)
      write(1)x2(2,2).count,x2(2,2).count_rate,x2(2,2).count_max
      call system_clock( count,count_rate          )
      write(1)count,count_rate
      call system_clock( x1.count,x1.count_rate             )
      write(1)x1.count,x1.count_rate
      call system_clock( x2(2,1).count,x2(2,1).count_rate)
      write(1)x2(2,1).count,x2(2,1).count_rate
      call system_clock( count                     )
      write(1)count
      call system_clock( x1.count                           )
      write(1)x1.count
      call system_clock( x2(1,2).count                   )
      write(1)x2(1,2).count
      call system_clock(                           )
      end
      
