#define ijk mmm
      character(len=*) ijk
      parameter(ijk='
     1 ijk
     2')
      if (index(ijk,'ijk')==0)print *,'error'
      print *,'pass'
      end

