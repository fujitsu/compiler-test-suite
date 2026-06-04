#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned short v5 (signed char, signed int);
extern unsigned short (*v6) (signed char, signed int);
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v11 (signed short, unsigned int, signed char);
extern signed short (*v12) (signed short, unsigned int, signed char);
extern unsigned short v13 (unsigned char, unsigned short);
extern unsigned short (*v14) (unsigned char, unsigned short);
extern unsigned short v15 (signed char, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short);
extern unsigned short v17 (unsigned int, signed char, unsigned int, signed short);
extern unsigned short (*v18) (unsigned int, signed char, unsigned int, signed short);
signed char v19 (unsigned int);
signed char (*v20) (unsigned int) = v19;
extern signed short v23 (unsigned char, signed char, signed char, signed short);
extern signed short (*v24) (unsigned char, signed char, signed char, signed short);
extern signed int v25 (unsigned short, unsigned char, unsigned short, signed char);
extern signed int (*v26) (unsigned short, unsigned char, unsigned short, signed char);
extern void v27 (unsigned char, signed int, unsigned short);
extern void (*v28) (unsigned char, signed int, unsigned short);
extern void v29 (unsigned char, unsigned short, unsigned int);
extern void (*v30) (unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned int v32 = 2U;
unsigned short v31 = 4;

signed char v19 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 3;
unsigned int v36 = 1U;
signed char v35 = 3;
trace++;
switch (trace)
{
case 3: 
return -3;
case 5: 
return 2;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v40;
v40 = v1 ();
history[history_index++] = (int)v40;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
