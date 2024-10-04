    struct tag1 {
      int      *iap[2];
    };
    int   exia[10];
    struct tag1 exst1 = {exia, exia+5};
int main()
    {
      struct tag1 st1 = exst1;
    }
 
