extern int printf(const char * restrict, ...);


void Func() {


     int    VarI    = 0;
     int ** VarIPRP = 0;

     VarI = **( (int * restrict *)VarIPRP );

     VarI = *( (*((int * restrict *)VarIPRP)) +9);
     VarI =    (*((int * restrict *)VarIPRP)) [8];
     VarI = *( (*((int * restrict *)VarIPRP)) ++);

     **((int * restrict *)VarIPRP) = VarI;

     *( (*((int * restrict *)VarIPRP)) +9) = VarI;
        (*((int * restrict *)VarIPRP)) [8] = VarI;
     *( (*((int * restrict *)VarIPRP)) ++) = VarI;

     VarI = (**   ((int * restrict *)VarIPRP))++;
     VarI = (*((* ((int * restrict *)VarIPRP))+9))++;
     VarI = (  (* ((int * restrict *)VarIPRP))[8])++;
     VarI = (*((* ((int * restrict *)VarIPRP))++))++;

     VarI = --(**   ((int * restrict *)VarIPRP));
     VarI = --(*((* ((int * restrict *)VarIPRP))+9));
     VarI = --(  (* ((int * restrict *)VarIPRP))[8]);
     VarI = --(*((* ((int * restrict *)VarIPRP))++));

     int * VarIPRA[10] = { 0 };

     VarI = *     *( ((int * restrict *)VarIPRA) +8 )      ;
     VarI = * ( ( *( ((int * restrict *)VarIPRA) +8 ) )++ );
     *     *( ((int * restrict *)VarIPRA) +8 )       = VarI;
     * ( ( *( ((int * restrict *)VarIPRA) +8 ) )++ ) = VarI;
     VarI = ( *(   *( ((int * restrict *)VarIPRA) +8 ) )     )++;
     VarI = ( *( ( *( ((int * restrict *)VarIPRA) +8 ) )++ ) )++;
     VarI = --( *(   *( ((int * restrict *)VarIPRA) +8 ) )     );
     VarI = --( *( ( *( ((int * restrict *)VarIPRA) +8 ) )++ ) );


}
int main() {
  printf("ok\n");
}

