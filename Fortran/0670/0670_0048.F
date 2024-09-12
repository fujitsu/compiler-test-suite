#define iii abc
         open(1,recl=10,access='direct',form='unformatted')
         i ii=1234

         write(1,rec=2) ii i
         read(1,rec=2) ii i
         if(abs(ii i-1234)>0.01)print *,'error'
         print *,'pass'
         end
