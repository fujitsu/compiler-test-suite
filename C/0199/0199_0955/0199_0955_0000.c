#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char);
extern unsigned short (*v2) (unsigned short, signed char);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed int v9 (unsigned int, unsigned short);
extern signed int (*v10) (unsigned int, unsigned short);
void v11 (signed char, unsigned int);
void (*v12) (signed char, unsigned int) = v11;
signed short v13 (unsigned short, unsigned int);
signed short (*v14) (unsigned short, unsigned int) = v13;
extern unsigned short v15 (unsigned short, unsigned int, signed int);
extern unsigned short (*v16) (unsigned short, unsigned int, signed int);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern void v19 (unsigned short, unsigned short);
extern void (*v20) (unsigned short, unsigned short);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned char v23 (unsigned char, signed char, signed char, unsigned int);
extern unsigned char (*v24) (unsigned char, signed char, signed char, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
signed char v32 = -2;
signed short v31 = 1;

signed short v13 (unsigned short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 6;
signed char v37 = -2;
signed char v36 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v39, unsigned int v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 2;
unsigned short v42 = 0;
signed char v41 = 2;
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
signed short v46 = 3;
unsigned int v45 = 7U;
unsigned char v44 = 5;
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
signed char v50;
unsigned short v51;
v49 = 6 + 5;
v50 = 3 + 3;
v51 = v1 (v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
