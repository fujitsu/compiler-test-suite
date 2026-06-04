#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, signed int);
extern signed short (*v2) (signed short, signed int);
extern signed char v3 (signed char, signed short, unsigned char);
extern signed char (*v4) (signed char, signed short, unsigned char);
signed short v5 (unsigned short);
signed short (*v6) (unsigned short) = v5;
extern signed char v7 (signed int, signed int, unsigned short, signed short);
extern signed char (*v8) (signed int, signed int, unsigned short, signed short);
extern signed char v9 (signed short, unsigned short, unsigned char);
extern signed char (*v10) (signed short, unsigned short, unsigned char);
extern signed int v11 (signed int, unsigned int, signed int);
extern signed int (*v12) (signed int, unsigned int, signed int);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern unsigned short v15 (unsigned short, unsigned int, signed char);
extern unsigned short (*v16) (unsigned short, unsigned int, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern unsigned int v21 (signed short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short, unsigned short, unsigned short);
extern signed int v23 (unsigned char, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int);
extern signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed short v27 (signed char, unsigned int, signed int, unsigned short);
extern signed short (*v28) (signed char, unsigned int, signed int, unsigned short);
extern signed int v29 (unsigned char, unsigned char, signed int);
extern signed int (*v30) (unsigned char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed short v32 = 1;
signed int v31 = 1;

unsigned short v19 (void)
{
{
for (;;) {
signed int v36 = 1;
signed int v35 = 1;
unsigned char v34 = 2;
trace++;
switch (trace)
{
case 3: 
return 4;
case 7: 
{
unsigned char v37;
unsigned char v38;
signed int v39;
signed int v40;
v37 = v34 - 4;
v38 = 6 - v34;
v39 = v36 + v35;
v40 = v29 (v37, v38, v39);
history[history_index++] = (int)v40;
}
break;
case 15: 
return 6;
default: abort ();
}
}
}
}

signed short v5 (unsigned short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 0U;
signed short v43 = 2;
signed int v42 = -3;
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
signed short v47;
signed int v48;
signed short v49;
v47 = v32 - -2;
v48 = v31 - v31;
v49 = v1 (v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
