#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned char, signed short, unsigned short);
extern signed int (*v6) (unsigned char, signed short, unsigned short);
extern unsigned short v7 (signed short, unsigned char, signed int);
extern unsigned short (*v8) (signed short, unsigned char, signed int);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern signed short v19 (signed short, unsigned char, unsigned short, signed short);
extern signed short (*v20) (signed short, unsigned char, unsigned short, signed short);
extern void v21 (signed short, unsigned int);
extern void (*v22) (signed short, unsigned int);
unsigned short v23 (unsigned short, unsigned short, signed short, signed short);
unsigned short (*v24) (unsigned short, unsigned short, signed short, signed short) = v23;
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern unsigned short v27 (signed short, unsigned int, unsigned short);
extern unsigned short (*v28) (signed short, unsigned int, unsigned short);
extern signed short v29 (unsigned char, signed char, unsigned int);
extern signed short (*v30) (unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned short v32 = 1;
signed int v31 = -2;

unsigned short v23 (unsigned short v34, unsigned short v35, signed short v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 6U;
unsigned short v39 = 5;
unsigned short v38 = 0;
trace++;
switch (trace)
{
case 1: 
return v39;
case 3: 
return v39;
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
unsigned char v43;
v43 = 1 - 6;
v1 (v43);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
