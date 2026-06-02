#include <stdio.h>
#include <stdlib.h>

extern unsigned char v1 (unsigned short, signed int);
extern unsigned char (*v2) (unsigned short, signed int);
signed int v3 (unsigned int, unsigned int, unsigned int, unsigned int);
signed int (*v4) (unsigned int, unsigned int, unsigned int, unsigned int) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v9 (unsigned short, signed short);
extern unsigned char (*v10) (unsigned short, signed short);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
void v19 (signed short);
void (*v20) (signed short) = v19;
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern signed short v25 (signed char, unsigned short);
extern signed short (*v26) (signed char, unsigned short);
extern unsigned char v27 (signed char);
extern unsigned char (*v28) (signed char);
extern void v29 (unsigned char, signed int);
extern void (*v30) (unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed short v32 = 3;
signed int v31 = 0;

void v19 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 6;
signed char v36 = -2;
signed short v35 = -3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned int v40 = 5U;
signed char v39 = 2;
signed char v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v41, unsigned int v42, unsigned int v43, unsigned int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 3;
signed short v46 = -2;
signed short v45 = -4;
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
unsigned short v50;
signed int v51;
unsigned char v52;
v50 = 1 + 6;
v51 = 1 - -2;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
