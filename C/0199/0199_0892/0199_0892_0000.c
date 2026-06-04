#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char, signed short, signed char, signed char);
extern signed char (*v2) (unsigned char, signed short, signed char, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
void v7 (void);
void (*v8) (void) = v7;
unsigned short v9 (signed char, unsigned char, signed char);
unsigned short (*v10) (signed char, unsigned char, signed char) = v9;
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
extern unsigned int v15 (signed short, signed int);
extern unsigned int (*v16) (signed short, signed int);
unsigned short v17 (signed int);
unsigned short (*v18) (signed int) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed int v27 (unsigned short, signed int, signed short);
extern signed int (*v28) (unsigned short, signed int, signed short);
extern unsigned int v29 (unsigned short, signed char, signed int);
extern unsigned int (*v30) (unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
unsigned int v32 = 2U;
unsigned char v31 = 0;

unsigned short v17 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -2;
unsigned char v36 = 7;
unsigned int v35 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v38, unsigned char v39, signed char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 2;
unsigned short v42 = 6;
unsigned int v41 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed char v46 = 3;
signed int v45 = -3;
signed short v44 = -4;
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
unsigned char v49;
signed short v50;
signed char v51;
signed char v52;
signed char v53;
v49 = 1 - 6;
v50 = -3 + -3;
v51 = 3 - -1;
v52 = -4 + -1;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
