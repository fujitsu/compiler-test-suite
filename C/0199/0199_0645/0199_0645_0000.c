#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (unsigned char, signed int, unsigned short, unsigned char);
extern signed int (*v4) (unsigned char, signed int, unsigned short, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed short, signed int, unsigned char);
extern unsigned short (*v8) (signed short, signed int, unsigned char);
extern signed int v9 (signed char, signed char, signed char, unsigned char);
extern signed int (*v10) (signed char, signed char, signed char, unsigned char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern signed short v15 (signed short, signed char, signed short);
extern signed short (*v16) (signed short, signed char, signed short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (unsigned short, unsigned short, signed int);
extern unsigned int (*v20) (unsigned short, unsigned short, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (signed char, signed int, signed int, signed char);
extern unsigned int (*v24) (signed char, signed int, signed int, signed char);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned short v27 (signed int, signed int, unsigned short);
extern unsigned short (*v28) (signed int, signed int, unsigned short);
extern unsigned int v29 (unsigned int, signed char, signed short);
extern unsigned int (*v30) (unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
signed int v32 = -4;
unsigned short v31 = 4;

unsigned short v25 (void)
{
{
for (;;) {
signed int v36 = -4;
signed char v35 = -2;
unsigned short v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed int v39 = -4;
unsigned char v38 = 6;
unsigned int v37 = 2U;
trace++;
switch (trace)
{
case 4: 
return 0;
case 6: 
{
signed char v40;
signed int v41;
signed int v42;
signed char v43;
unsigned int v44;
v40 = 1 - -1;
v41 = v39 + v39;
v42 = v39 + -2;
v43 = 0 + -2;
v44 = v23 (v40, v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 14: 
return -4;
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
unsigned short v47;
v47 = v1 ();
history[history_index++] = (int)v47;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
