#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned short v5 (signed int, unsigned char);
unsigned short (*v6) (signed int, unsigned char) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed int, unsigned short);
extern unsigned int (*v14) (signed int, unsigned short);
void v15 (void);
void (*v16) (void) = v15;
extern signed short v17 (signed char, unsigned int, signed char);
extern signed short (*v18) (signed char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed char, signed char, signed short);
extern signed int (*v22) (signed char, signed char, signed short);
signed char v23 (signed char);
signed char (*v24) (signed char) = v23;
extern signed short v25 (signed int, unsigned int, signed short, signed int);
extern signed short (*v26) (signed int, unsigned int, signed short, signed int);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern signed char v29 (unsigned short, signed int, unsigned char, unsigned char);
extern signed char (*v30) (unsigned short, signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
unsigned short v32 = 0;
signed char v31 = 2;

signed char v23 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 2;
signed short v36 = 2;
signed short v35 = -4;
trace++;
switch (trace)
{
case 1: 
return v34;
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
unsigned char v40 = 7;
signed char v39 = 2;
signed char v38 = 1;
trace++;
switch (trace)
{
case 3: 
return;
case 8: 
{
signed int v41;
unsigned short v42;
unsigned int v43;
v41 = -3 - -3;
v42 = 6 - 3;
v43 = v13 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 10: 
{
signed int v44;
unsigned short v45;
unsigned int v46;
v44 = -3 + 0;
v45 = 6 + 2;
v46 = v13 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (signed int v47, unsigned char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 2U;
signed short v50 = -3;
unsigned int v49 = 4U;
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
unsigned char v54;
v54 = v1 ();
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
