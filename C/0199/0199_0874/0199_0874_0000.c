#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
unsigned short v5 (signed int, signed char, unsigned int);
unsigned short (*v6) (signed int, signed char, unsigned int) = v5;
extern void v7 (signed short, unsigned int);
extern void (*v8) (signed short, unsigned int);
void v9 (void);
void (*v10) (void) = v9;
extern signed char v11 (signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char);
extern unsigned int v13 (signed char, unsigned int, signed char, signed char);
extern unsigned int (*v14) (signed char, unsigned int, signed char, signed char);
signed char v15 (unsigned int, signed int, signed char, signed short);
signed char (*v16) (unsigned int, signed int, signed char, signed short) = v15;
extern unsigned short v19 (signed int, unsigned int, unsigned short);
extern unsigned short (*v20) (signed int, unsigned int, unsigned short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed char v23 (signed char, unsigned int);
extern signed char (*v24) (signed char, unsigned int);
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
extern unsigned int v27 (unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned int, unsigned short);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed short v32 = 0;
unsigned int v31 = 4U;

signed char v15 (unsigned int v34, signed int v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 5;
unsigned char v39 = 4;
signed int v38 = -4;
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
signed char v43 = 0;
signed short v42 = -2;
signed char v41 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v44, signed char v45, unsigned int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 2;
unsigned short v48 = 0;
unsigned short v47 = 5;
trace++;
switch (trace)
{
case 11: 
return v48;
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
signed short v52;
unsigned int v53;
v52 = v32 - -2;
v53 = v1 (v52);
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
