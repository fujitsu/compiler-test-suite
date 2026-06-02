#include <stdio.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (signed short, unsigned short, unsigned char);
extern unsigned int (*v14) (signed short, unsigned short, unsigned char);
extern signed int v15 (signed char, signed int, signed short, unsigned char);
extern signed int (*v16) (signed char, signed int, signed short, unsigned char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed char v19 (unsigned char, signed int, signed char, signed int);
extern signed char (*v20) (unsigned char, signed int, signed char, signed int);
extern unsigned short v21 (unsigned short, unsigned int);
extern unsigned short (*v22) (unsigned short, unsigned int);
extern unsigned int v25 (unsigned short, signed short);
extern unsigned int (*v26) (unsigned short, signed short);
extern signed char v27 (signed char, signed int);
extern signed char (*v28) (signed char, signed int);
extern signed short v29 (unsigned int, unsigned char, unsigned char);
extern signed short (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed int v32 = -4;
unsigned char v31 = 3;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v36;
v36 = v1 ();
history[history_index++] = (int)v36;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
