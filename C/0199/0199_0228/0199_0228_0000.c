#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed char, unsigned short);
extern void (*v4) (signed char, unsigned short);
extern signed char v5 (signed short, signed char, signed char, unsigned char);
extern signed char (*v6) (signed short, signed char, signed char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (signed char, signed char);
extern signed char (*v10) (signed char, signed char);
extern signed short v11 (signed int, unsigned int);
extern signed short (*v12) (signed int, unsigned int);
signed short v15 (unsigned short, unsigned char, unsigned short);
signed short (*v16) (unsigned short, unsigned char, unsigned short) = v15;
extern signed short v17 (signed int, unsigned int, signed short);
extern signed short (*v18) (signed int, unsigned int, signed short);
extern unsigned int v19 (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned int (*v20) (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (signed char, unsigned short, unsigned char);
extern signed char (*v24) (signed char, unsigned short, unsigned char);
extern signed short v25 (unsigned short, unsigned char, signed int);
extern signed short (*v26) (unsigned short, unsigned char, signed int);
extern signed char v29 (signed short, unsigned int, signed short);
extern signed char (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed short v32 = 2;
unsigned int v31 = 2U;

signed short v15 (unsigned short v34, unsigned char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 2;
signed short v38 = -2;
signed int v37 = -2;
trace++;
switch (trace)
{
case 6: 
return v38;
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
unsigned char v42;
v42 = v1 ();
history[history_index++] = (int)v42;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
