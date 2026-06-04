#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned short);
extern signed short (*v2) (unsigned int, unsigned short);
extern signed int v3 (signed short, signed char);
extern signed int (*v4) (signed short, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned char, unsigned char, signed int);
extern void (*v8) (unsigned char, unsigned char, signed int);
extern signed int v9 (signed int, signed char, signed char);
extern signed int (*v10) (signed int, signed char, signed char);
signed int v11 (unsigned short);
signed int (*v12) (unsigned short) = v11;
extern unsigned char v13 (unsigned short, unsigned char);
extern unsigned char (*v14) (unsigned short, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed int v21 (signed char, unsigned short, unsigned short, signed int);
extern signed int (*v22) (signed char, unsigned short, unsigned short, signed int);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern signed short v27 (unsigned char, unsigned short, signed int);
extern signed short (*v28) (unsigned char, unsigned short, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
signed short v32 = 2;
unsigned int v31 = 2U;

signed short v25 (void)
{
{
for (;;) {
signed char v36 = -3;
signed short v35 = -3;
unsigned char v34 = 1;
trace++;
switch (trace)
{
case 2: 
return v35;
default: abort ();
}
}
}
}

signed int v11 (unsigned short v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 1U;
unsigned int v39 = 2U;
signed char v38 = -1;
trace++;
switch (trace)
{
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
unsigned int v43;
unsigned short v44;
signed short v45;
v43 = v31 - v31;
v44 = 4 - 6;
v45 = v1 (v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
