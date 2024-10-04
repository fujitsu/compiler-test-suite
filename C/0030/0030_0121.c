int main()
{

  static  _Bool  add =  (1) ;
  static  _Bool  sub =  (0) ;

  if( (sub == 1) || (sub == 1 ) )
    ;
  if( (1 == sub) || (1 == sub ) )
    ;
  if( (sub != 1) || (sub != 1 ) )
    ;
  if( (1 != sub) || (1 != sub ) )
    ;
  if( (sub != 1) || (sub == 1 ) )
    ;
  if( (1 == sub) || (1 != sub ) )
    ;
  if( (sub == 1) || (sub != 1 ) )
    ;
  if( (1 != sub) || (1 == sub ) )
    ;

  if( (sub == 1) || (add == 1 ) )
    ;
  if( (1 == sub) || (1 == add ) )
    ;
  if( (sub != 1) || (add != 1 ) )
    ;
  if( (1 != sub) || (1 != add ) )
    ;
  if( (sub != 1) || (add == 1 ) )
    ;
  if( (1 == sub) || (1 != add ) )
    ;
  if( (sub == 1) || (add != 1 ) )
    ;
  if( (1 != sub) || (1 == add ) )
    ;
}

