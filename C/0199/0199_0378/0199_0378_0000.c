#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned short, signed char);
extern void (*v2) (unsigned short, unsigned char, unsigned short, signed char);
extern void v3 (signed short, unsigned char, unsigned char);
extern void (*v4) (signed short, unsigned char, unsigned char);
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
extern unsigned short v9 (unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned char, unsigned int);
extern unsigned char v11 (signed short, signed short, signed short, unsigned int);
extern unsigned char (*v12) (signed short, signed short, signed short, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
unsigned int v19 (signed int, unsigned int, unsigned int, unsigned char);
unsigned int (*v20) (signed int, unsigned int, unsigned int, unsigned char) = v19;
extern signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed int v32 = 0;
unsigned char v31 = 3;

unsigned short v29 (void)
{
{
for (;;) {
signed int v36 = -2;
unsigned int v35 = 1U;
signed short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v37, unsigned int v38, unsigned int v39, unsigned char v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -4;
signed char v42 = 2;
unsigned short v41 = 4;
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
signed short v46 = 3;
unsigned char v45 = 5;
signed int v44 = 1;
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
unsigned short v49;
unsigned char v50;
unsigned short v51;
signed char v52;
v49 = 1 - 1;
v50 = v31 - 6;
v51 = 1 - 7;
v52 = 1 + 1;
v1 (v49, v50, v51, v52);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
