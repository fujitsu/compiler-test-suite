#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned char);
extern void (*v2) (signed char, signed char, unsigned char);
extern signed int v3 (void);
extern signed int (*v4) (void);
unsigned int v5 (signed char);
unsigned int (*v6) (signed char) = v5;
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned int v13 (signed short, signed char, signed short, unsigned char);
extern unsigned int (*v14) (signed short, signed char, signed short, unsigned char);
extern void v15 (signed short, unsigned char, unsigned char);
extern void (*v16) (signed short, unsigned char, unsigned char);
extern signed short v17 (signed char, unsigned int, unsigned int);
extern signed short (*v18) (signed char, unsigned int, unsigned int);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (unsigned int, signed int, unsigned short);
extern unsigned int (*v24) (unsigned int, signed int, unsigned short);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned int v32 = 2U;
unsigned int v31 = 7U;

signed char v9 (void)
{
{
for (;;) {
signed short v36 = -2;
unsigned int v35 = 5U;
unsigned short v34 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 0;
unsigned char v39 = 7;
signed char v38 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v41;
signed int v42;
unsigned short v43;
unsigned int v44;
v41 = 5U - 4U;
v42 = -3 - -2;
v43 = 4 - 6;
v44 = v23 (v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 3: 
return 5U;
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
signed char v47;
signed char v48;
unsigned char v49;
v47 = -2 + -4;
v48 = v33 + -1;
v49 = 3 - 2;
v1 (v47, v48, v49);
}
} while (trace < 9);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
