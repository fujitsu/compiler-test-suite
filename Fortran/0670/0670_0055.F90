#define ijk mmm
      character(len=*) ijk
      parameter(ijk='  &
&     ijk              &
&     ')
      if (index(ijk,'ijk')==0)print *,'error'
      print *,'pass'
      end
