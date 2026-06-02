#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed int v3 (unsigned int, signed int, unsigned char);
extern signed int (*v4) (unsigned int, signed int, unsigned char);
extern signed char v5 (signed int, unsigned int);
extern signed char (*v6) (signed int, unsigned int);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
void v11 (unsigned int, unsigned short, unsigned short);
void (*v12) (unsigned int, unsigned short, unsigned short) = v11;
extern void v13 (signed short, unsigned int, signed short);
extern void (*v14) (signed short, unsigned int, signed short);
extern signed int v15 (unsigned short, unsigned char);
extern signed int (*v16) (unsigned short, unsigned char);
extern void v17 (signed char, unsigned char);
extern void (*v18) (signed char, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern unsigned int v27 (signed short, unsigned char, signed short);
extern unsigned int (*v28) (signed short, unsigned char, signed short);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed int v32 = -3;
signed short v31 = 2;

signed short v25 (void)
{
{
for (;;) {
signed int v36 = 2;
signed char v35 = 2;
signed char v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v37, unsigned short v38, unsigned short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = 3;
unsigned short v41 = 4;
signed int v40 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -4;
signed int v45 = -3;
unsigned char v44 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v47;
v47 = v19 ();
history[history_index++] = (int)v47;
}
break;
case 13: 
return;
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
unsigned int v50;
v50 = 1U + 4U;
v1 (v50);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
