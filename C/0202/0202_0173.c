int main()
{
  signed char a=0;
  signed char b=0;
  signed char c=0;
  signed char d=0;
  signed char e=0;

#pragma omp parallel reduction(+:a,b)
  {
    a++;
    b++;
  }
#pragma omp parallel reduction(+:a,b,c,d,e)
  {
    a++;
    b++;
    c++;
    d++;
    e++;
  }
#pragma omp parallel reduction(+:a,c,d,b,e)
  {
    a++;
    c++;
    d++;
    e++;
    b++;
  }

#pragma omp parallel reduction(-:a,b)
  {
    a--;
    b--;
  }
#pragma omp parallel reduction(-:a,b,c,d,e)
  {
    a--;
    b--;
    c--;
    d--;
    e--;
  }
#pragma omp parallel reduction(-:a,c,d,e,b)
  {
    a--;
    c--;
    d--;
    e--;
    b--;
  }

#pragma omp parallel reduction(*:a,b)
  {
    a=a*1;
    b=b*1;
  }
#pragma omp parallel reduction(*:a,b,c,d,e)
  {
    a=a*1;
    b=b*1;
    c=c*1;
    d=d*1;
    e=e*1;
  }
#pragma omp parallel reduction(*:a,c,d,e,b)
  {
    a=a*1;
    c=c*1;
    d=d*1;
    e=e*1;
    b=b*1;
  }

#pragma omp parallel reduction(&&:a,b)
  {
    a=a&&1;
    b=b&&1;
  }
#pragma omp parallel reduction(&&:a,b,c,d,e)
  {
    a=a&&1;
    b=b&&1;
    c=c&&1;
    d=d&&1;
    e=e&&1;
  }
#pragma omp parallel reduction(&&:a,c,d,e,b)
  {
    a=a&&1;
    c=c&&1;
    d=d&&1;
    e=e&&1;
    b=b&&1;
  }

#pragma omp parallel reduction(||:a,b)
  {
    a=a||1;
    b=b||1;
  }
#pragma omp parallel reduction(||:a,b,c,d,e)
  {
    a=a||1;
    b=b||1;
    c=c||1;
    d=d||1;
    e=e||1;
  }
#pragma omp parallel reduction(||:a,c,d,e,b)
  {
    a=a||1;
    c=c||1;
    d=d||1;
    e=e||1;
    b=b||1;
  }
}
