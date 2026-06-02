#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (signed int, signed char);
extern void (*v4) (signed int, signed char);
extern void v5 (unsigned int, unsigned char);
extern void (*v6) (unsigned int, unsigned char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (unsigned char, signed int);
extern signed char (*v10) (unsigned char, signed int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
signed char v17 (unsigned char, unsigned int, unsigned int);
signed char (*v18) (unsigned char, unsigned int, unsigned int) = v17;
extern unsigned int v19 (signed char, unsigned char);
extern unsigned int (*v20) (signed char, unsigned char);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (unsigned int, signed short, signed int, signed int);
extern unsigned short (*v26) (unsigned int, signed short, signed int, signed int);
extern unsigned int v27 (signed short, signed short, signed short, unsigned short);
extern unsigned int (*v28) (signed short, signed short, signed short, unsigned short);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed char v32 = 3;
unsigned short v31 = 7;

signed char v17 (unsigned char v34, unsigned int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 1;
signed char v38 = 0;
signed short v37 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned char v42 = 1;
unsigned int v41 = 6U;
unsigned char v40 = 5;
trace++;
switch (trace)
{
case 9: 
{
signed short v43;
unsigned char v44;
v43 = -3 - 0;
v44 = v21 (v43);
history[history_index++] = (int)v44;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed char v47 = 2;
unsigned short v46 = 3;
signed short v45 = -3;
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
signed short v50;
v50 = v1 ();
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
