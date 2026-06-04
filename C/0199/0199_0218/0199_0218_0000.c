#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned char v7 (unsigned short, unsigned char, unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, unsigned char, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed int v11 (unsigned char, unsigned int, unsigned char);
extern signed int (*v12) (unsigned char, unsigned int, unsigned char);
unsigned short v13 (unsigned int);
unsigned short (*v14) (unsigned int) = v13;
extern signed char v15 (signed short, signed int);
extern signed char (*v16) (signed short, signed int);
extern signed int v17 (signed short, unsigned char);
extern signed int (*v18) (signed short, unsigned char);
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
extern void v23 (signed char, signed char, unsigned char);
extern void (*v24) (signed char, signed char, unsigned char);
void v25 (unsigned int, signed int);
void (*v26) (unsigned int, signed int) = v25;
extern unsigned char v27 (signed char, signed int);
extern unsigned char (*v28) (signed char, signed int);
extern signed char v29 (unsigned char, unsigned int, unsigned short);
extern signed char (*v30) (unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned int v32 = 2U;
unsigned char v31 = 3;

void v25 (unsigned int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 4;
signed char v37 = 3;
unsigned char v36 = 3;
trace++;
switch (trace)
{
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = 1;
unsigned short v41 = 2;
unsigned short v40 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed int v45 = -3;
signed char v44 = -3;
unsigned char v43 = 7;
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
unsigned char v48;
signed short v49;
v48 = 7 - v31;
v49 = v1 (v48);
history[history_index++] = (int)v49;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
