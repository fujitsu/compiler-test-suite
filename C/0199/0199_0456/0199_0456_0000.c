#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
signed char v7 (unsigned char, unsigned int, unsigned char);
signed char (*v8) (unsigned char, unsigned int, unsigned char) = v7;
unsigned short v9 (unsigned int, unsigned char, signed short);
unsigned short (*v10) (unsigned int, unsigned char, signed short) = v9;
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned short v19 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v20) (signed short, unsigned char, unsigned short, unsigned short);
extern signed int v21 (signed short, unsigned int, unsigned char, signed int);
extern signed int (*v22) (signed short, unsigned int, unsigned char, signed int);
extern signed int v23 (signed int, unsigned char, signed short, signed int);
extern signed int (*v24) (signed int, unsigned char, signed short, signed int);
extern unsigned char v25 (signed short, signed short, signed int);
extern unsigned char (*v26) (signed short, signed short, signed int);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed short v32 = -2;
unsigned char v31 = 6;

unsigned char v27 (void)
{
{
for (;;) {
unsigned short v36 = 2;
unsigned char v35 = 6;
signed int v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v37, unsigned char v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 5;
unsigned char v41 = 5;
signed char v40 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v43, unsigned int v44, unsigned char v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = -1;
unsigned int v47 = 4U;
unsigned int v46 = 2U;
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
signed char v51;
v51 = v1 ();
history[history_index++] = (int)v51;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
