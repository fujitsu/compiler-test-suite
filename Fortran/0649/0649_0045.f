          type ty
            integer i
          end type
          type (ty) :: stc,sta
          sta%i=1
          stc%i=1
          c=llsub(sta%i)
          print *,'pass'
          end
          function llsub(i)
          llsub=i
          end
