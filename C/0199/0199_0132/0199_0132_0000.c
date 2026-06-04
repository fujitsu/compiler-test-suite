#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern signed short v7 (unsigned int, unsigned char, signed short, signed char);
extern signed short (*v8) (unsigned int, unsigned char, signed short, signed char);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned int v11 (unsigned short, signed char, signed int);
extern unsigned int (*v12) (unsigned short, signed char, signed int);
extern unsigned char v13 (unsigned int, unsigned char, signed int, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int, signed int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
unsigned int v17 (signed int);
unsigned int (*v18) (signed int) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern void v21 (signed short, unsigned int);
extern void (*v22) (signed short, unsigned int);
extern unsigned short v23 (unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned char, unsigned int);
extern unsigned int v25 (unsigned int, signed char, signed int, signed int);
extern unsigned int (*v26) (unsigned int, signed char, signed int, signed int);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern signed short v29 (signed char, unsigned short);
extern signed short (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed short v32 = -4;
signed char v31 = 1;

unsigned int v17 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -2;
signed int v36 = 1;
signed short v35 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed short v40 = -2;
signed short v39 = 1;
signed int v38 = -4;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
{
unsigned short v41;
signed int v42;
v41 = 4 + 2;
v42 = v1 (v41);
history[history_index++] = (int)v42;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned int v45 = 6U;
signed short v44 = 2;
signed int v43 = 0;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v46;
unsigned char v47;
signed int v48;
signed int v49;
unsigned char v50;
v46 = 5U + 2U;
v47 = 3 - 2;
v48 = v43 + 0;
v49 = -3 - v43;
v50 = v13 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 12: 
return v45;
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
unsigned short v53;
signed int v54;
v53 = 2 + 6;
v54 = v1 (v53);
history[history_index++] = (int)v54;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
