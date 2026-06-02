#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed int);
extern signed int (*v2) (signed int);
extern unsigned char v3 (unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned short, unsigned char, signed short);
extern unsigned char v5 (unsigned int, signed short);
extern unsigned char (*v6) (unsigned int, signed short);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
void v11 (signed char, signed int, signed int, signed int);
void (*v12) (signed char, signed int, signed int, signed int) = v11;
extern void v13 (unsigned char, unsigned char);
extern void (*v14) (unsigned char, unsigned char);
extern unsigned int v15 (unsigned char, signed short, unsigned char);
extern unsigned int (*v16) (unsigned char, signed short, unsigned char);
extern unsigned int v17 (signed char, unsigned short);
extern unsigned int (*v18) (signed char, unsigned short);
signed short v19 (unsigned int, signed char, unsigned int);
signed short (*v20) (unsigned int, signed char, unsigned int) = v19;
extern unsigned short v21 (signed char, signed char);
extern unsigned short (*v22) (signed char, signed char);
unsigned int v25 (unsigned char);
unsigned int (*v26) (unsigned char) = v25;
extern signed int v27 (unsigned char, unsigned char, unsigned short, unsigned char);
extern signed int (*v28) (unsigned char, unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned int v32 = 2U;
unsigned short v31 = 5;

unsigned int v25 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 1;
unsigned short v36 = 0;
unsigned int v35 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned int v38, signed char v39, unsigned int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 0;
unsigned char v42 = 4;
signed char v41 = -3;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}

void v11 (signed char v44, signed int v45, signed int v46, signed int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 3;
unsigned short v49 = 4;
signed char v48 = -2;
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
signed int v53;
signed int v54;
v53 = 3 + 2;
v54 = v1 (v53);
history[history_index++] = (int)v54;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
