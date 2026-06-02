#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
void v3 (signed short);
void (*v4) (signed short) = v3;
extern signed char v5 (signed char, signed char);
extern signed char (*v6) (signed char, signed char);
signed short v7 (signed short);
signed short (*v8) (signed short) = v7;
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
extern unsigned short v11 (unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char);
extern signed char v13 (signed short, signed int, signed char, signed char);
extern signed char (*v14) (signed short, signed int, signed char, signed char);
unsigned int v15 (unsigned char, unsigned int, unsigned int);
unsigned int (*v16) (unsigned char, unsigned int, unsigned int) = v15;
extern signed short v17 (unsigned short, signed int, signed int);
extern signed short (*v18) (unsigned short, signed int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern void v21 (signed char, signed short, signed int, signed char);
extern void (*v22) (signed char, signed short, signed int, signed char);
extern unsigned short v23 (signed char, unsigned char, signed int, unsigned char);
extern unsigned short (*v24) (signed char, unsigned char, signed int, unsigned char);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
unsigned short v32 = 3;
signed int v31 = -3;

signed char v25 (void)
{
{
for (;;) {
signed short v36 = 1;
signed char v35 = -1;
signed short v34 = 0;
trace++;
switch (trace)
{
case 8: 
return 1;
case 10: 
return 1;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v37, unsigned int v38, unsigned int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = 1;
signed char v41 = 3;
signed char v40 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 7U;
signed int v45 = 3;
unsigned int v44 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 2;
unsigned char v49 = 1;
unsigned short v48 = 6;
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
unsigned int v53;
v53 = v1 ();
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
