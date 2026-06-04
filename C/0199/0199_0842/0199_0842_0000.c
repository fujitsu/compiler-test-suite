#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed short v3 (signed char, signed int);
extern signed short (*v4) (signed char, signed int);
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
void v9 (void);
void (*v10) (void) = v9;
void v13 (unsigned int, signed int);
void (*v14) (unsigned int, signed int) = v13;
extern unsigned char v15 (signed short, unsigned int);
extern unsigned char (*v16) (signed short, unsigned int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned int v19 (unsigned int, unsigned int, signed char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed char);
extern unsigned short v21 (signed char, unsigned char, signed short, signed char);
extern unsigned short (*v22) (signed char, unsigned char, signed short, signed char);
unsigned char v23 (signed char);
unsigned char (*v24) (signed char) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (signed char, signed short, signed short, signed short);
extern void (*v28) (signed char, signed short, signed short, signed short);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 3U;
unsigned short v31 = 5;

unsigned char v23 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 0;
signed char v36 = 3;
signed int v35 = -1;
trace++;
switch (trace)
{
case 11: 
return 4;
default: abort ();
}
}
}
}

void v13 (unsigned int v38, signed int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -3;
signed char v41 = 0;
unsigned int v40 = 3U;
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
signed char v45 = -1;
unsigned int v44 = 0U;
unsigned char v43 = 6;
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
v48 = 1 + 4;
v1 (v48);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
