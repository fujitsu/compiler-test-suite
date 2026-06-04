int main()
{
  long double a=0;
  long double b=0;
  long double c=0;
  long double d=0;
  long double e=0;

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
